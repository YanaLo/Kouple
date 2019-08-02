Rails.application.routes.draw do

  get 'contactrequest/index'
  get 'contactrequest/new'
  # session routes
# resources :sessions, only: [:post, :destroy]
get "/login", to: "sessions#login", as: "login"
post '/login', to:"sessions#create"
delete "/logout", to: "sessions#destroy"



root "users#home"
# user routes
get "/users", to: "users#index", as: "users"
get "/users/new", to:"users#new", as: "new_user"
get "/users/:id", to: "users#show", as: "user"
post "/users", to: "users#create"
get "/users/:id/edit", to:"users#edit"
patch "/users/:id", to:"users#update"
delete "/users/:id", to:"users#destroy", as:"destroy_user"
 # interests routes
get '/interests', to:"interests#index", as:"interests"
get '/interests/new', to:"interests#new"
get '/interests/:id', to:"interests#show", as:"interest"
post '/interests', to:"interests#create"
# get '/interests', to:"interests#index"
# resources :user_interests, only: [:index, :new, :show, :edit]

# user_interests
# get '/interests', to:"interests#index", as:"interests"
# get '/interests/new', to:"interests#new"
# get '/interests/:id', to:"interests#show", as:"interest"
post '/user_interests', to:"user_interests#create"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
