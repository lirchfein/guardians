Rails.application.routes.draw do
  get 'bookings/create'
  devise_for :users
  root to: 'guards#index'

  resources :guards, only: [ :index, :show, :new, :create ] do
    resources :bookings, only: [ :create ]
  end

  # need mission accomplished or not

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
