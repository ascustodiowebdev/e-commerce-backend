Rails.application.routes.draw do
  resources :items
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :items
  resource :cart, only: [:show, :destroy]
  resources :cart_items, only: [:create, :destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
