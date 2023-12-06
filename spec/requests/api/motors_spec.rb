# Your Swagger test
require 'swagger_helper'

RSpec.describe 'API Motors', type: :request do
  let(:user) { create(:user) }

  path '/api/motors' do
    before(:all) do
      @user = create(:user) # Create a user using the factory
      @store_location = create(:store_location)
    end
    get 'Lists all motors' do
      tags 'Motors'
      produces 'application/json'
      response '200', 'List of motors - Successful' do
        run_test! do
          expect(response).to have_http_status(:ok)
        end
      end
    end

    post 'Creates a motor' do
      tags 'Motors'
      consumes 'application/json'
      parameter name: :motor, in: :body, schema: {
        type: :object,
        properties: {
          brand_name: { type: :string },
          model_no: { type: :integer },
          manufacturer: { type: :string },
          manufacture_date: { type: :string, format: :date },
          description: { type: :string },
          photo: { type: :string },
          unit_price: { type: :number },
          purchase_fee: { type: :number },
          finance_fee: { type: :number },
          total_price: { type: :number },
          user_id: { type: :integer },
          location_id: { type: :integer }
        },
        required: %w[brand_name model_no manufacturer manufacture_date description photo
                     unit_price purchase_fee finance_fee total_price user_id location_id]
      }
      response '201', 'Motor created - Successful' do
        let(:motor) do
          {
            user_id: @user.id,
            location_id: @store_location.id, # Create a StoreLocation using the factory
            brand_name: 'Suzuki',
            model_no: 1234,
            manufacturer: 'Mitsubishi',
            manufacture_date: '2022-10-20',
            description: 'Motor',
            photo: 'https://motor.jpeg',
            unit_price: 10.0,
            purchase_fee: 10.0,
            finance_fee: 10.0,
            total_price: 10.0
          }
        end
        before do
          sign_in user
        end
        run_test! do
          expect(response).to have_http_status(:created)
        end
      end
    end

    path '/api/motors/{id}' do
      before do
        @motor = create(:motor, user: @user)
      end
      parameter name: :id, in: :path, type: :integer, description: 'Motor ID'

      delete 'Deletes a motor' do
        tags 'Motors'
        produces 'application/json'

        response '204', 'Motor deleted - Successful' do
          let(:id) { @motor.id }
          before do
            sign_in user
          end
          run_test! do
            expect(response).to have_http_status(:no_content)
          end
        end

        response '404', 'Motor not found' do
          let(:id) { '9999' } # Assuming 999 is an invalid motor ID
          before do
            sign_in user
          end
          run_test! do
            expect(response).to have_http_status(:not_found)
          end
        end
      end
    end
  end
end
