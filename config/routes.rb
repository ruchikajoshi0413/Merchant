Rails.application.routes.draw do
 
  # resources :productimages
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'users/new'
  get 'users/index'
  get 'users/show'
  get 'users/edit'

  devise_for :users
  resources :users
  
  resources :products do
    member do
      get :pcarts, to: 'pcarts#cart'
      get :wishlists, to: 'wishlists#create'
    end
    resources :productimages
  end
  resources :merchantids
  resources :pcarts do 
    member do
      get :remove_item, to: 'pcarts#destroy'
      get :orders, to: 'orders#create'
    end
  end
  resources :orders
  resources :wishlists do
    member do 
      get :orders, to: 'orders#create'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "merchantids#index"
end
