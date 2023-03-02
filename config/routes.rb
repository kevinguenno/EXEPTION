Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :castles, only: %i[index show] do
    resources :bookings, only: %i[create]
  end

  resources :bookings, only: %i[index update destroy]

  namespace :owner do
    resources :castles, only: %i[index new create]
    resources :bookings, only: %i[index] do
      member do
        patch :accept
        patch :decline
        patch :cancel_decision
      end
    end
  end
end
