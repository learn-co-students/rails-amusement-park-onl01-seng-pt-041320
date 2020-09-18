Rails.application.routes.draw do
  
  root 'welcome#home'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  delete '/signin' => 'sessions#destroy'

  resources :users
  resources :attractions
  resources :rides
end
