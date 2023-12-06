# spec/requests/user_sessions_spec.rb

require 'swagger_helper'

RSpec.describe 'User Sessions', type: :request do
  let(:user_credentials) {} # Define the user_credentials parameter using let

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

        before do
          sign_in user
        end

        run_test! do |response|
          data = JSON.parse(response.body)
          expect(data['status']['code']).to eq(200)
          expect(data['status']['message']).to eq('User signed in successfully')
        end
      end

      response '401', 'Invalid email or password' do
        let(:invalid_user_credentials) { { email: 'nonexistent@example.com', password: 'wrong_password' } }

        before { post '/users/sign_in', params: { user_credentials: invalid_user_credentials } }

        run_test! do |response|
          expect(response).to have_http_status(401)
          expect(response.body).to include('You need to sign in or sign up before continuing.')
        end
      end
    end
  end
end
