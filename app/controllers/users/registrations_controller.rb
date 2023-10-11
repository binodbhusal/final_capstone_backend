class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private

  def respond_with(resource, _options = {})
    if resource.persisted?
      render json: {
        status: {
          code: 200, message: 'Signed up successfully', data: resource
        }
      }
    else
      render json: {
        status: {
          message: 'User not created successfully', errors: resource.errors.full_messages
        },
        response_status: :unprocessable_entity
      }
    end
  end

  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name)
  end
end
