Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'users#index'
  # post '/sessions' => 'sessions#create'
  # post '/userss' => 'users#create'
  # get '/dashboard' => 'vm_module#index'
end
