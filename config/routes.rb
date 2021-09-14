Rails.application.routes.draw do

  get "/users" => "users#index"

  post "/users" => "users#create"

  patch "/users/:id" => "users#update"

  post "/sessions" => "sessions#create"

  get "/user_concerts" => "user_concerts#index"

  post "/user_concerts" => "user_concerts#create"

  get "/user_concerts/:id" => "user_concerts#show"

  patch "/user_concerts/:id" => "user_concert#update"
  
  delete "/user_concerts/:id" => "user_concert#destroy"

end
