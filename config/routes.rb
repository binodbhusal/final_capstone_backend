Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  namespace:api do
    resources :motors, only: [:index, :show, :create, :destroy]
    resources :users, only: [:index, :show, :create, :destroy] do
      resources :reservations, only: [:index, :show, :create, :update, :destroy]
    end
    resources :stores_location, only: [:index, :show, :create, :destroy]
    end
end
