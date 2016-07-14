Rails.application.routes.draw do
  get 'home/index'
  root to: "home#index"

  resources :groups

  devise_for :users

end
