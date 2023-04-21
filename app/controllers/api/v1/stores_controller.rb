class Api::V1::StoresController < ApplicationController
  skip_before_action :authenticate_request, only: %i[index show_all show_store_products create login]
    def index
        @store = Store.all.limit(3).includes(product:[:store, :category])
        render json: {status: 'Success', message: '3 Stores gotten', data: @store.as_json(include: {product: {include:[:category, :store]}})}
    end

    def show_all
      @store = Store.all.includes(product:[:store, :category])
      render json: {status: 'Success', message: 'Displaying stores', data: @store.as_json(include: {product: {include: [:category, :store]}})}
    end

    def show_store_products
      @show_store_products = Product.where(store_id: params[:id]).includes(:store)
      render json: {status: 'Success', message: 'Gotten Items', data: @show_store_products}
    end


    def login
      @store = Store.find_by(email: params[:email])
  
      if @store && @store.authenticate(params[:password])
        token = encode_token(store_id: @store.id)
        render json: {status: 'Success', message: 'Logged in successfully', data: {token:}, store: @store},status: 200
      else
        render json: {status: 'Error', message: 'Invalid email or password'},status: 401
      end
    end

    def show_prod
      @show = current_store.product
      render json:{status: 'Success', data: @show}
    end

end
