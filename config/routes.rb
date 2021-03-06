Rails.application.routes.draw do
  root 'pages#home'
  get '/about', to: 'pages#about'
  get '/help', to: 'pages#help'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
  resources :users
  resources :todos do
    resources:comments, only: [:create]
  end
  resources :owners
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#destroy'
  
  mount ActionCable.server => '/cable'
  get '/chat', to: 'chatrooms#show'
  
  resources :messages, only: [:create]
end
