Rails.application.routes.draw do
  # get 'users/show'
  devise_for :users
  root to: 'pages#home'
  get '/about', to: 'pages#about', as: :about

  resources :guards, only: [ :index, :show, :new, :create, :edit, :update ] do
    resources :bookings, only: [ :create]
    resources :reviews, only: [ :create, :new]
  end

  resources :users, only: [ :show]

  get '/bookings/:id/confirm', to: 'users#confirm', as: :confirm
  get '/bookings/:id/cancel', to: 'users#cancel', as: :cancel_booking
  get '/bookings/:id/complete', to: 'users#complete', as: :complete_mission

  get '/authorization', to: 'pages#authorization'

end
