Rails.application.routes.draw do
  resources :wishlist_items
  resources :items
  resources :wishlists
  resources :user_connections
  resources :connections
  resources :skills
  resources :profiles
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
