Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :users, only: [:index, :show]
  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end
  resources :groups, only: [:index, :show, :destroy]
end
