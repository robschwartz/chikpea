Rails.application.routes.draw do
  resources :events
  resources :children
  resources :partners
  resources :locations
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations', sessions: 'sessions'  }
  post '/signup' => 'splash#signup', as: :splash_signup
  get '/splash' => 'splash#index'
  root 'splash#index'
  get '/setup' => 'setup#index'

  # main page for logged in users
  get '/schedule' => 'events#index'
end
