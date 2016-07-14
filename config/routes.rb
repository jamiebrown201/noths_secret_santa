Rails.application.routes.draw do
  get 'home/index'
  root to: "home#index"
  get '/groups/product'
  resources :groups

  devise_for :users

end
