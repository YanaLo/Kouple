Rails.application.routes.draw do

  # session routes
# resources :sessions, only: [:post, :destroy]
get "/login", to: "sessions#login", as: "login"
post '/login', to:"sessions#create"


# user routes
  get "/users", to: "users#index", as: "users"
get "/users/new", to:"users#new", as: "new_user"
get "/users/:id", to: "users#show", as: "user"
post "/users", to: "users#create"









  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
