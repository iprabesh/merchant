Rails.application.routes.draw do

  root 'products#index'
  resources :order_items
  resources :orders
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
