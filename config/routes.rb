Rails.application.routes.draw do
  resources :orders, only: [:create]
  resources :products
  resources :restaurants
  devise_for :users
 root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
