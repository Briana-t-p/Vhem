Rails.application.routes.draw do
  get 'rentals/index'
  get 'homes/index'
  get 'rentals/new'
  root 'homes#index'
  resources :rentals, except: [:destroy]
  get 'rentals/delete/:id', to: 'rentals#destroy', as: 'delete_rental'
  devise_for :realtors, path: 'realtors'
  devise_for :users, path: 'users'

  resources :leases
  resources :users, only: [:show]
  resources :realtors, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
