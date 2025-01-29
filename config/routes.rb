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

  #Cart_Items
  get '/cart_items' => 'cart_items#index'
  get '/cart_items/:id' => 'cart_items#show'
  post '/cart_items' => 'cart_items#create'
  patch '/cart_items/:id' => 'cart_items#update'
  delete '/cart_items/:id' => 'cart_items#destroy'

  # Cart
  get '/carts' => 'carts#index'
  get '/cart' => 'carts#show'
  post '/carts' => 'carts#create'
  patch '/carts/:id' => 'carts#update'
  delete '/carts/:id' => 'carts#destroy'
  
  #health check
  get "up" => "rails/health#show"
  
  # Defines the root path route ("/")
  root "homes#index"

end
