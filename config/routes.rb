Rails.application.routes.draw do
  resources :products
  resources :categories
  root "pages#home"
  get "/about" => "pages#about", as: :pages_about
  devise_for :users
  resources :addresses
end
