Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :events, only: [:index, :new, :create]
  resources :profiles, only: [ :show, :edit, :update ]
end
