Rails.application.routes.draw do
  devise_for :users
  resources :artworks
  
  # Defines the root path route ("/")
  # root "articles#index"
  root 'artworks#index'
end
