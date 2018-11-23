Rails.application.routes.draw do
  # get 'users/show'
  devise_for :users
  root to: 'pages#home'

  resources :guards, only: [ :index, :show, :new, :create, :edit, :update ] do
    resources :bookings, only: [ :create]
    resources :reviews, only: [ :create, :new]
  end

  resources :users, only: [ :show]
  resources :bookings, only: [ :update]

  patch '/bookings/:id/confirm', to: 'bookings#confirm', as: :confirm
  patch '/bookings/:id/cancel', to: 'bookings#cancel', as: :cancel_booking

  get '/authorization', to: 'pages#authorization'

end
