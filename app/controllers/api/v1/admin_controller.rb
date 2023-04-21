class Api::V1::AdminController < ApplicationController
  skip_before_action :authenticate_request, only: %i[ login]
  def login
    @admin = Admin.find_by(email: params[:email])

    if @admin && @admin.authenticate(params[:password])
      token = encode_token(admin_id: @admin.id)
      render json: {status: 'Success', message: 'Logged in successfully', data: {token:}, admin: @admin},status: 200
    else
      render json: {status: 'Error', message: 'Invalid email or password'},status: 401
    end
  end

  def all_users
    @users = User.all
    render json: {status: 'Success', message: 'All users', users: @users}, status: 200
  end
  def all_orders
    @orders = Order.all
    render json: {status: 'Success', message: 'All orders', orders: @orders}, status: 200
  end
  def all_products
    @products = Product.all
    render json: {status: 'Success', message: 'All products', products: @products}, status: 200
  end
  def all_stores
    @stores = Store.all
    render json: {status: 'Success', message: 'All stores', stores: @stores}, status: 200
  end
  def all_categories
    @categories = Category.all
    render json: {status: 'Success', message: 'All categories', categories: @categories}, status: 200
  end
end
