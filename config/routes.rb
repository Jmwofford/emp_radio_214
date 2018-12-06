Rails.application.routes.draw do
  
  root 'vm_module#index'
  resources :users, only:[:new, :create]
  resources :sessions, only:[:new, :create]
end
