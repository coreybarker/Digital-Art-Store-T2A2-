Rails.application.routes.draw do
  resources :line_items
  resources :carts
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end
  
  devise_for :users
  resources :artworks
  get 'artists', to: 'artworks#artists'
  # Defines the root path route ("/")
  # root "articles#index"
  root 'artworks#index'
end
