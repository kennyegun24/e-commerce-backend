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
      resources :orders, only: [:create]
      get "stores/all", to: 'stores#show_all'
      get "categories/all", to: 'categories#show_all'
      get "categories/:id/products", to: 'categories#show_cat_products'
      get "stores/:id/products", to: 'stores#show_store_products'
      post "user/login", to: 'users#login'
      post "store/login", to: 'stores#login'
      post "admin/login", to: 'admin#login'
      get "admin/all_users", to: 'admin#all_users'
      get "admin/all_orders", to: 'admin#all_orders'
      get "admin/all_products", to: 'admin#all_products'
      get "admin/all_stores", to: 'admin#all_stores'
      get "admin/all_categories", to: 'admin#all_categories'
      post "admin/create/category", to: 'admin#create_category'
      post "admin/create/store", to: 'admin#create_store'
      post "admin/create/product", to: 'admin#create_product'
      get "store/show", to: 'stores#show_prod'
      get "store/orders", to: 'orders#show_store_orders'
    end
  end
end
