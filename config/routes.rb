Rails.application.routes.draw do
  root 'application#hello'
  resources :users
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/show' => 'secrets#show'
end
