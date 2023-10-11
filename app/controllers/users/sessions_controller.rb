class Users::SessionsController < Devise::SessionsController
  respond_to :json
  before_action :authenticate_user!, except: [:create]

end
