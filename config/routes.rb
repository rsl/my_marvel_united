Rails.application.routes.draw do
  devise_for :users, path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    sign_up: 'signup',
  }

  root 'home#index'

  resources :boxes
  resources :heroes
  resources :villains
  resources :locations
end
