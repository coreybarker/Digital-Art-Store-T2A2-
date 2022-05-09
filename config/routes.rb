Rails.application.routes.draw do
  resources :artwork
  # Defines the root path route ("/")
  # root "articles#index"
  root 'artwork#index'
end
