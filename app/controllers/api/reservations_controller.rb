class Api::ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[show update destroy]
  before_action :authenticate_user!

  # GET /api/reservations
  def index
    user_id = params[:user_id]
    @reservations = Reservation.where(user_id:).includes(:motor)
    json_response = @reservations.as_json(
      include: { motor: { only: %i[brand_name model_no] } },
      only: %i[id reserve_date city_name], methods: [:user_id]
    )
    render json: json_response
  end

  # GET /api/reservations/1
  def show
    render json: @reservation
  end

  def new
    @reservation = Reservation.new
  end

  # POST /api/reservations
  def create
    # Find the user by user_id
    @user = User.find_by(id: params[:user_id])

    # Find the motor by motor_id
    @motor = Motor.find_by(id: reservation_params[:motor_id])

    if @user.nil? || @motor.nil?
      render json: { error: 'User or motor not found' }, status: :unprocessable_entity
      return
    end

    # Build a new reservation with user, motor, and other parameters from reservation_params
    @reservation = @user.reservations.new(reservation_params)

    if @reservation.save
      render json: @reservation, include: { motor: { only: [:id] } }, status: :created
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/reservations/1
  def update
    if @reservation.update(reservation_params)
      render json: @reservation
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/reservations/1
  def destroy
    @reservation.destroy
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:motor_id, :reserve_date, :city_name)
  end
end
