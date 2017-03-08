Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#index'

  post '/items/create' => 'items#create'
  post '/users/create' => 'users#create'
  post '/users/login' => 'users#login'

  get '/items/cart' => 'items#cart'
  get '/items/:id' => 'items#show'
  get '/users/add_item/:id' => 'users#add_item'
  get '/users/cart' => 'users#cart'
  get '/users/purchase' => 'users#purchase'
end
