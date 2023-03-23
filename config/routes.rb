Rails.application.routes.draw do
  resources :carts
  root "pages#home"
  get "/about" => "pages#about", as: :pages_about
  resources :products
  resources :categories

  devise_for :users
  resources :addresses
end
