Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :relationships, only: [:create, :destroy]
  resources :conversations do
    resources :messages
  end
end
