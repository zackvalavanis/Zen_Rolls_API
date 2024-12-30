Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  #users 
  get '/users' => 'users#index'
  post '/users' => 'users#create'

  #sessions
  post "/sessions" => "sessions#create"

  #foods
  get '/foods' => 'foods#index'
  get '/foods/:id' => 'foods#show'
  post '/foods' => 'foods#create'
  patch '/foods/:id' => 'foods#update'
  delete '/foods/:id' => 'foods#destroy'

  #Categories
  get '/categories' => 'categories#index'
  get '/categories/:id' => 'categories#show'
  post '/categories' => 'categories#create'
  patch '/categories/:id' => 'categories#update'
  delete '/categories/:id' => 'categories#destroy'


  # Defines the root path route ("/")
  # root "posts#index"
end
