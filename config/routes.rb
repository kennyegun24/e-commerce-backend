Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      resources :stores, only: [:index, :create]
      resources :products, only: [:index, :show]
      resources :categories, only: [:index]
      get "stores/all", to: 'stores#show_all'
      get "categories/all", to: 'categories#show_all'
      get "categories/:id/products", to: 'categories#show_cat_products'
      get "stores/:id/products", to: 'stores#show_store_products'
      post "user/login", to: 'users#login'
      post "store/login", to: 'stores#login'
      get "store/show", to: 'stores#show_prod'
      get "store/orders", to: 'orders#show_store_orders'
    end
  end
end
