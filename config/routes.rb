Rails.application.routes.draw do
  get '/sign_up', to: 'users#new'
  get '/login', to: 'sessions#new'
  resources :users, only: [:create, :show]

end
