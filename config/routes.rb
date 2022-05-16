Rails.application.routes.draw do
  devise_for :users
  resources :artworks
  get 'artists', to: 'artworks#artists'
  get 'cart', to: 'artworks#cart'
  # Defines the root path route ("/")
  # root "articles#index"
  root 'artworks#index'
end
