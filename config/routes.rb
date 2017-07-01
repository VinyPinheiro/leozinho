Rails.application.routes.draw do

  root 'home#index'

  # Routes to allocation
  get 'allocations/new' => 'allocations#new', :as => 'allocations_new'
  post 'allocations/create' => 'allocations#create', :as => 'allocations_create'
  get 'allocations/devolution/:id' => 'allocations#devolution', :as => 'allocations_devolution'
  
  # Routes to products
  get 'products/index' => 'products#index', :as => 'products_index'
  get 'products/new' => 'products#new', :as => 'products_new'
  post 'products/create' => 'products#create', :as => 'products_create'
  get 'products/edit/:id' => 'products#edit', :as => 'products_edit'
  patch 'products/update/:id' => 'products#update', :as => 'products_update'
  get 'products/destroy/:id' => 'products#destroy', :as => 'products_destroy'

  # Routes to clients
  get 'clients/index' => 'clients#index', :as => 'clients_index'
  get 'clients/new' => 'clients#new', :as => 'clients_new'
  post 'clients/create' => 'clients#create', :as => 'clients_create'
  get 'clients/edit/:id' => 'clients#edit', :as => 'clients_edit'
  patch 'clients/update/:id' => 'clients#update', :as => 'clients_update'
  get 'clients/destroy/:id' => 'clients#destroy', :as => 'clients_destroy'
  get 'clients/show/:id' => 'clients#show', :as => 'clients_show'

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
