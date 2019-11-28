Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :customers
  resources :orders
  resources :order_details
  resources :products
  resources :categories
  resources :employees
  resources :shippers
  resources :suppliers
end
