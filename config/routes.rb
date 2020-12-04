Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :flats, except: [:destroy] do
    resources :reviews, only: [:new, :create]
    resources :reservations, only: [:new, :create]
  end
  delete 'flats/:id', to: 'flats#destroy'
  get "dashboard", to: 'pages#dashboard'
  get "accept/:id", to: 'reservations#accept', as: :accept
  get "decline/:id", to: 'reservations#decline', as: :decline

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
