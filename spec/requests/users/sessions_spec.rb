# spec/requests/user_sessions_spec.rb

require 'swagger_helper'

RSpec.describe 'User Sessions', type: :request do
  path '/users/sign_in' do
    post 'Logs in a user and returns a JWT token' do
      tags 'User Sessions'
      consumes 'application/json'
      parameter name: :user_credentials, in: :body, schema: {
        type: :object,
        properties: {
          email: { type: :string },
          password: { type: :string }
        },
        required: %w[email password]
      }

      response '200', 'User signed in successfully' do
        let(:user) { create(:user) }
        let(:user_credentials) { { email: user.email, password: 'password' } }

        run_test! do |response|
          data = JSON.parse(response.body)
          expect(data['status']['code']).to eq(200)
          expect(data['status']['message']).to eq('User signed in successfully')
          expect(data['data']['token']).not_to be_nil
          expect(data['data']['user']).not_to be_nil
        end
      end

      response '401', 'Invalid email or password' do
        let(:user_credentials) { { email: 'nonexistent@example.com', password: 'wrong_password' } }

        run_test! do |response|
          data = JSON.parse(response.body)
          expect(data['status']['code']).to eq(401)
          expect(data['status']['message']).to eq('Invalid email or password')
        end
      end
    end
  end
end
