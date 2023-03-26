class Api::V1::UsersController < ApplicationController
    skip_before_action :authenticate_request, only: %i[create login]

    def create
        @user = User.new(user_params)

        if @user.save
            token = encode_token(user_id: @user.id)
            render json: {status: 'success', message: 'User created', data: {token:}, user: @user}, status: 201
        else
            render json: {status: 'Error', message: 'Email exists already'}, status: 422
        end
    end

    def login
        @user = User.find_by(email: params[:email])

        if @user && @user.authenticate(params[:password])
            token = encode_token(user_id: @user.id)
            render json: {status: 'Success', message: 'Logged in successfully', data: {token:}},status: 200
        else
            render json: {status: 'Error', message: 'Invalid email or password'},status: 401
        end
    end

    def user_params
        params.permit(:name, :email, :password)
    end
end
