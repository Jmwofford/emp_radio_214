Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'users#index'
  get '/login'=>'sessions#new'
  post '/login'=>'sessions#create'
  post '/sessions' => 'sessions#create'
  post '/users' => 'users#create'
  get '/dashboard' => 'vm_module#index'
resources :users

end
