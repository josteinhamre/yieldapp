Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  resources :transactions, only: [ :index ]
  resources :categories, only: [ :index ]
  get '/profile', to: 'pages#profile', as: 'profile'
  get '/dashboard', to: 'pages#dashboard', as: 'dashboard'
  get '/inbox', to: 'transactions#inbox', as: 'inbox'
  patch '/next_month', to: 'categories#next_month', as: 'next_month'
  patch '/prev_month', to: 'categories#prev_month', as: 'prev_month'
end
