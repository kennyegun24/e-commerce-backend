class Api::V1::ProductsController < ApplicationController
  skip_before_action :authenticate_request, only: %i[index show]
  def index
        @products = Product.all.includes(:category, :store)
        render json: {status: 'Success', message: 'All products', data: @products.to_json(include: [:store, :category])}
    end

    def show
        @products = Product.find(params[:id])
        render json: {status: 'Success', message: 'Individual product', data: @products.to_json(include: [:store, :category])}
    end

               
end
