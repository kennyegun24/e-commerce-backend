class Api::V1::AdminController < ApplicationController
  skip_before_action :authenticate_request, only: %i[ login create_category]
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

  def create_category
    @category = Category.new(categories_params)

    if @category.save
      render json: {status: 'success', message: 'Category created', category: @category}, status: 201
    else
      render json: @category, status: 422
    end
  end

  def create_store
    @store = Store.new(store_create_params)

    if @store.save
      token = encode_token(store_id: @store.id)
      render json: {status: 'success', message: 'Store created', data: {token:}, store: @store}, status: 201
    else
      render json: {status: 'Error', message: 'Email exists already'}, status: 422
    end
  end

  def create_product
    @product = Product.new(product_params)

    if @product.save
      render json: {status: 'success', message: 'product created', product: @product}, status: 201
    else
      render json: {status: 'Error', message: 'Did not create'}, status: 422
    end
  end

  def categories_params
    params.require(:category).permit(:name, :image)
  end
  
  def store_create_params
    params.require(:store).permit(:store_name, :email, :password, :image)
  end
  
  def product_params
    params.require(:product).permit(:store_id, :in_stock, :category_id, :email, :name, :image, :size, :price, :color, :description, :details)
  end
end
