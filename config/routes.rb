Rails.application.routes.draw do
  devise_for :users
  get 'home/index'

  get 'groups' => 'groups#index'

  root to: "home#index"
end
