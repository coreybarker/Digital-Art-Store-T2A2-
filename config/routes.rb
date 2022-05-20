Rails.application.routes.draw do
  devise_scope :user do
    # Redirects signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end
  
  devise_for :users
  resources :line_items
  resources :carts
  resources :artworks
  get 'artists', to: 'artworks#artists'
  post 'index', to: 'artist_roles#create', as: 'artist_role'
  # Defines the root path route ("/")
  # root "articles#index"
  root 'artworks#index'
end
