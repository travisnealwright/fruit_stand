FruitStand::Application.routes.draw do

  get "log_out", to: "sessions#destroy", as: "log_out"
  get "log_in", to: "sessions#new", as: "log_in"
  get "sign_up", to: "users#new", as: "sign_up"
  resources :users
  resources :sessions

  get "products", to: "products#index", as: "products"

  get '/cart', to: "cart#show", as: "show_cart"
  post '/cart/add_item', to: "cart#add_item", as: "add_item"
  post '/cart/remove_item/:id', to: "cart#remove_item", as: "remove_item"
  post '/cart/checkout', to: "cart#checkout", as: "checkout"

  root to: 'users#new'
  #root :to => 'products#index'

end
