Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  resources :groups

  root to: "home#index"

  # devise_for :users, controllers: {
  #     sessions: 'users/sessions'
  #   }
end
