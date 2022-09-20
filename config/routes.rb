Rails.application.routes.draw do
  #test resources
  resources :hats


  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get '*path' => redirect('/')

  
  resources :items, :orders, :carts, :cart_order_items, :users, :reviews
  post '/login', to: 'sessions#create'
  post '/employee-login', to: 'sessions#create_employee'
  delete '/logout', to: 'sessions#destroy'
  get '/me', to: 'user#show'
  get '/checkout/:id', to: "carts#checkout" 


   #rerouting to home path
   get '*path' => redirect('/hats')

end
