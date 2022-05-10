Rails.application.routes.draw do
  resources :artworks
  # Defines the root path route ("/")
  # root "articles#index"
  root 'artworks#index'
end
