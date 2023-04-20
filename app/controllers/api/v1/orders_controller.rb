class Api::V1::OrdersController < ApplicationController
    def index
    end

    def show_store_orders
        @orders = current_store.order
        render json: {data: @orders}
    end
end
