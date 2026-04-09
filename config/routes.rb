Rails.application.routes.draw do
  root 'pages#home'
  get '/team', to: 'pages#team'
  get '/contact', to: 'pages#contact'
  get '/welcome/:first_name', to: 'pages#welcome'
  resources :gossips, only: [:index, :show, :new, :create]
  resources :users, only: [:show]
end