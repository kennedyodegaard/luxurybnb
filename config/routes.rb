Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :flats, except: [:destroy] do
    resources :reservations, only: [:new, :create]
  end
  delete 'flats/:id', to: 'flats#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
