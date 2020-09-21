Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root "application#index"

get "/signin" => "sessions#new"
post "/login" => "sessions#create"
get "/signup" => "users#new"
post "/signup" => "users#create"
get "/logout" => "sessions#destroy"
post "/users/:id" => "users#update"

resources :users
resources :attractions
resources :rides

end
