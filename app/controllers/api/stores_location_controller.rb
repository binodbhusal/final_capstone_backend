class Api::StoresLocationController < ApplicationController
  before_action :authenticate_user!
  # GET /api/stores_location
  def index
    @locations = StoreLocation.all
    render json: @locations
  end

  # GET /api/stores_location/:id
  def show
    @location = StoreLocation.find_by(id: params[:id])
    if @location
      render json: @location
    else
      render json: { error: 'Location not found' }, status: :not_found
    end
  end

  # POST /api/stores_location
  def create
    # @location = StoreLocation.new(location_params)
    @location = StoreLocation.find_or_initialize_by(city_name: location_params[:city_name])
    if @location.new_record?
      if @location.save
        render json: @location, status: :created
      else
        render json: @location.errors, status: :unprocessable_entity
      end
    else
      render json: { message: 'Store Location already exists', data: @location }, status: :ok
    end
  end

  # PUT /api/stores_location/:id
  def update
    @location = StoreLocation.find_by(id: params[:id])
    if @location
      if @location.update(location_params)
        render json: @location
      else
        render json: @location.errors, status: :unprocessable_entity
      end
    else
      render json: { error: 'Location not found' }, status: :not_found
    end
  end

  # DELETE /api/stores_location/:id
  def destroy
    @location = StoreLocation.find_by(id: params[:id])
    if @location
      @location.destroy
      head :no_content
    else
      render json: { error: 'Location not found' }, status: :not_found
    end
  end

  private

  def location_params
    params.require(:stores_location).permit(:city_name)
  end
end
