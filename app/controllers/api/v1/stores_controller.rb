class Api::V1::StoresController < ApplicationController
  skip_before_action :authenticate_request, only: %i[index show_all show_store_products]
    def index
        @store = Store.all.limit(3)
        render json: {status: 'Success', message: '3 Stores gotten', data: @store}
    end

    def show_all
      @store = Store.all
      render json: {status: 'Success', message: 'Displaying stores', data: @store}
    end

    def show_store_products
      @show_store_products = Product.where(store_id: params[:id]).includes(:store)
      render json: {status: 'Success', message: 'Gotten Items', data: @show_store_products}
    end
end
