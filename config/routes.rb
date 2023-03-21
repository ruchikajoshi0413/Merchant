Rails.application.routes.draw do
  resources :productimages
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'users/new'
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  devise_for :users
  resources :users
  resources :products
  resources :merchantids
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "merchantids#index"
end
