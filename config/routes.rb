Rails.application.routes.draw do
  
  namespace :api do

    post "/sessions" => "sessions#create"

    post "/users" => "users#create"
    get "/users" => "users#index"
    get "/users/:id" => "users#show"

    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"


    post "/images" => "images#create"
    delete "/images/:id" => "images#destroy"


    get "/categories" => "categories#index"
    get "/categories/:id" => "categories#show"


    post "/products" => "products#create"
    get "/products/:id" => "products#show"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"

    post "/conversations" => "conversations#create"
    get "/conversations" => "conversations#index"
    get "/conversations/:id" => "conversations#show"


    post "/messages" => "messages#create"
  end
  post "/sessions" => "sessions#create"

  post "/users" => "users#create"
  get "/users" => "users#new"
  get "/users/:id" => "users#show"

  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"


  post "/images" => "images#create"
  delete "/images/:id" => "images#destroy"


  get "/categories/:id" => "categories#show"


  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "/products/:id" => "products#destroy"

  get "/conversations" => "conversations#index"
  get "/conversations/:id" => "conversations#show"


  post "/messages" => "messages#create"
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
end
