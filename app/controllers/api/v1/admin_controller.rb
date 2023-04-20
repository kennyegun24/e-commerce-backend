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
end
