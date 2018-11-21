Rails.application.routes.draw do
  get 'users/show'
  # patch 'bookings/:id/update', to: 'bookings#update'
  devise_for :users
  root to: 'pages#home'

  resources :guards, only: [ :index, :show, :new, :create ] do
    resources :bookings, only: [ :create]
  end

  resources :users, only: [ :show]
  resources :bookings, only: [ :update]

  # get '/error_handler'

  # need mission accomplished or not

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
