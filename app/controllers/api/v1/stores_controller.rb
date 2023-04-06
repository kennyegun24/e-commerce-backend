class Api::V1::StoresController < ApplicationController
  skip_before_action :authenticate_request, only: %i[index show_all show_store_products create login]
    def index
        @store = Store.all.limit(3)
        render json: {status: 'Success', message: '3 Stores gotten', data: @store}
    end

    def show_all
      @store = Store.all.includes(product:[:store, :category])
      render json: {status: 'Success', message: 'Displaying stores', data: @store.as_json(include: {product: {include: [:category, :store]}})}
    end

    def show_store_products
      @show_store_products = Product.where(store_id: params[:id]).includes(:store)
      render json: {status: 'Success', message: 'Gotten Items', data: @show_store_products}
    end

    def create
      @store = Store.new(store_login_params)

      if @store.save
        token = encode_token(store_id: @store.id)
        render json: {status: 'success', message: 'Store created', data: {token:}, store: @store}, status: 201
      else
        render json: {status: 'Error', message: 'Email exists already'}, status: 422
      end
    end

    def login
      @store = Store.find_by(email: params[:email])
  
      if @store && @store.authenticate(params[:password])
        token = encode_token(store_id: @store.id)
        render json: {status: 'Success', message: 'Logged in successfully', data: {token:}},status: 200
      else
        render json: {status: 'Error', message: 'Invalid email or password'},status: 401
      end
    end

    def show_prod
      @show = current_store.product
      render json:{status: 'Success', data: @show}
    end

    def store_login_params
      params.require(:store).permit(:store_name, :email, :password)
    end
end
