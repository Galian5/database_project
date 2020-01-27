Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :customers do
    resources :orders do
      resources :order_details
    end
  end

  resources :categories do
    resources :products
  end

  resources :employees
  resources :shippers
  resources :suppliers do
    resources :products
  end

  root 'orders#index'
end
