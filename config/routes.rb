Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :users, only: [:index, :show, :update]
  resources :chatrooms, only: [:show, :create] do
    resources :messages, only: :create
  end
  resources :groups, only: [:index, :show, :destroy,] do
    resources :posts, only: [:create]
    resources :user_groups, only: [:create]
  end
end
