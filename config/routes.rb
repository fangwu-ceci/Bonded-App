Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users, only: [:index, :show]

  resources :chatrooms, only: :show do
    resources :messages, only: :create
  end

  resources :groups, only: [:index, :show, :destroy]
end
