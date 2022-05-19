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
  get 'order_by_price', to: 'artworks#order_by_price'
  # Defines the root path route ("/")
  # root "articles#index"
  root 'artworks#index'
end
