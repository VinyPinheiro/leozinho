Rails.application.routes.draw do
  root 'home#index'


  # Routes to products
  get 'products/index' => 'products#index', :as => 'products_index'
  get 'products/new' => 'products#new', :as => 'products_new'
  post 'products_create' => 'products#create', :as => 'products_create'
  get 'products/edit/:id' => 'products#edit', :as => 'products_edit'
  patch 'products/update' => 'products#update', :as => 'products_update'
  get 'products/destroy/:id' => 'products#destroy', :as => 'products_destroy'

  # Routes to user
  get 'users/new' => 'users#new', :as => 'users_new'
  post 'users/create' => 'users#create', :as => 'users_create'
  get 'users/edit' => 'users#edit', :as => 'users_edit'
  patch 'users/update' => 'users#update', :as => 'users_update'
  get 'users/destroy' => 'users#destroy', :as => 'users_destroy'

  # Session routs
  get 'log_out' => 'sessions#destroy', :as => 'log_out'
  get 'log_in' => 'sessions#new', :as => 'log_in'
  post 'init_session' => 'sessions#create', :as => 'sessions_create'
  
  # home page route
  get 'home/index' => 'home#index', :as => 'home'
end
