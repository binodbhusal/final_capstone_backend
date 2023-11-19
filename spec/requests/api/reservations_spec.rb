require 'swagger_helper'

RSpec.describe 'API Reservations', type: :request do
  let(:user) { create(:user) }
  before do
    sign_in user
  end
  before(:each) do
    @user1 = create(:user)
    @user2 = create(:user)
    @motor1 = create(:motor, user: @user1)
    @motor2 = create(:motor, user: @user2)
    @reservation1 = create(:reservation, user: @user1, motor: @motor1)
  end

  path '/api/users/{user_id}/reservations' do
    get 'Lists reservations' do
      tags 'Reservations'
      produces 'application/json'
      parameter name: :user_id, in: :path, type: :integer, required: true

      response '200', 'list of reservations' do
        let(:user_id) { @user1.id }

        run_test! do
          expect(response).to have_http_status(:ok)
          # Assuming your response contains an array of reservations
          body = JSON.parse(response.body)
          expect(body).to be_an(Array)
          expect(body.length).to eq(1) # User1 has one reservation
          expect(body[0]['user_id']).to eq(@user1.id)
          reservation_ids = body.map { |reservation| reservation['id'] }
          expect(reservation_ids).to include(@reservation1.id)
        end
      end
    end

    post 'Creates a reservation' do
      let(:user_id) { @user2.id }
      let(:motor_id) { @motor2.id }

      tags 'Reservations'
      consumes 'application/json'
      parameter name: :user_id, in: :path, type: :integer, required: true
      parameter name: :reservation, in: :body, schema: {
        type: :object,
        properties: {
          motor_id: { type: :integer },
          reserve_date: { type: :string, format: 'date' },
          city_name: { type: :string }
        },
        required: %w[motor_id reserve_date city_name]
      }

      response '201', 'reservation created' do
        let(:reservation_attributes) do
          { motor_id:, reserve_date: '2022-10-20', city_name: 'Lisbon' }
        end
        let(:reservation) do
          {
            reservation: reservation_attributes
          }
        end
        before do
          # Ensure that the associated user exists
          @user2 ||= create(:user, id: user_id)

          # Ensure that the associated motor exists
          @motor2 ||= create(:motor, id: motor_id, user: @user2)
        end

        run_test! do
          expect(response).to have_http_status(:created)
          body = JSON.parse(response.body)
          expect(body['user_id']).to eq(@user2.id)
          expect(body['motor']['id']).to eq(@motor2.id)
        end
      end
    end
  end
end
