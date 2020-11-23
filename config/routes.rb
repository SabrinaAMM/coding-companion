Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :interviews, only: [:index, :show, :new, :create, :destroy] do
    resources :bookings, only: :create
    resources :messages, only: :create
  end
  resources :bookings, only: :destroy
  resources :dashboard, only: :index
  resources :users, only: :show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
