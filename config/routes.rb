Rails.application.routes.draw do
  get 'sessions/new'
  get '/signup' , to: 'users#new'
  get '/home', to:'static_pages#home'
  get '/help', to:'static_pages#help'
  get '/about', to:'static_pages#about'
  get '/contact', to:'static_pages#contact'
  get '/login', to:'sessions#new'
  root 'static_pages#home'
  post '/login', to: 'sessions#create'
  post '/signup', to: 'users#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
end
