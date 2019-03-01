Rails.application.routes.draw do
  devise_for :users
  devise_for :installs
  
  root to: 'items#index'
  resources :items
  
  resources :users, only: :show
end
