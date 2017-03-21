Rails.application.routes.draw do
  resources :events
  resources :children
  resources :partners
  resources :locations

  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks', registrations: 'registrations', sessions: 'sessions'}
  post '/signup' => 'splash#signup', as: :splash_signup

  root 'splash#index'

  get '/splash' => 'splash#index'
  get '/info/partners' => 'splash#partners_info'

  get '/setup' => 'setup#index'

  devise_scope :user do
    get '/partner/sign_up' => 'registrations#partner', as: :partner_signup
  end

  # main page for logged in users
  get '/schedule' => 'events#index'

  # main page for logged in businesses
  get '/dashboard' => 'partners#dashboard'

  resource :user, only: [:edit, :update] do

  end
end
