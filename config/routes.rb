Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'user/registrations' }
  resources :users
  devise_for :admins
  resources :admins
  get 'home/index'
  root to: "home#index"
end
