

Rails.application.routes.draw do

  root 'vm_module#index'
  resources :users, only:[:create, :new]
  resources :sessions, only:[:new, :create, :destroy]
  resources :vm_module, only: [:create, :new]
end
