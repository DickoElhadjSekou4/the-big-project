Rails.application.routes.draw do
  root 'pages#home'
  get '/team', to: 'pages#team'
  get '/contact', to: 'pages#contact'
  get '/welcome/:first_name', to: 'pages#welcome'
  get '/gossips', to: 'gossips#index'
  get '/gossips/:id', to: 'gossips#show'
  get '/users/:id', to: 'users#show'
end
