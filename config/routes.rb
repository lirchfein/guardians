Rails.application.routes.draw do
  get 'users/show'
  get 'bookings/create'
  devise_for :users
  root to: 'pages#home'

  resources :guards, only: [ :index, :show, :new, :create ] do
    resources :bookings, only: [ :create ]
  end

  resources :users, only: [ :show]

  get '/authorization', to: 'pages#authorization'

  # need mission accomplished or not

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
