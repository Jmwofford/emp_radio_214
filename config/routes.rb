

Rails.application.routes.draw do

  root 'vm_module#index'
  resources :users, only:[:create, :new]
  resources :sessions, only:[:new, :create, :destroy]
end
