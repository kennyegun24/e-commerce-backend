class Api::V1::CategoriesController < ApplicationController
  skip_before_action :authenticate_request, only: %i[index show_all show_cat_products]

  def index
    @category = Category.all.limit(3)
    render json: {status: 'Success', message: '3 categories', data: @category}
  end

  def show_all
    @category = Category.all.includes(product: [:category, :store]).to_json(include: {product: {include: [:category, :store]}})
    render json: {status: 'Success', message: 'all categories', data: @category}
  end

  def show_cat_products
    @category_products = Product.where(category_id: params[:id]).includes(:category)
    render json: {status: 'Success', message: 'Gotten products from a particular category', data: @category_products.as_json(include: [:category])}
  end
end
