Rails.application.routes.draw do
  get '/sign_up', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  resources :users, only: [:create, :show]
  resources :photos
    
end
