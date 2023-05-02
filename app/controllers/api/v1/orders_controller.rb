class Api::V1::OrdersController < ApplicationController
    def create
      order_params = JSON.parse(request.body.read)["order"]

      credit_card_number = order_params["credit_card_number"]
      credit_card_cvv = order_params["credit_card_cvv"]
      credit_card_exp_month = order_params["credit_card_exp_month"]
      credit_card_exp_year = order_params["credit_card_exp_year"]
      amount = order_params["amount"]
      items = order_params["items"]
      user_name = order_params["user_name"]
      address = order_params["address"]
      tel_number = order_params["tel_number"]
      user_id = order_params["user_id"]
      items = order_params["items"]

        @order = Order.new(
          credit_card_number: credit_card_number,
          credit_card_exp_month: credit_card_exp_month,
          credit_card_exp_year: credit_card_exp_year,
          credit_card_cvv: credit_card_cvv,
          amount: amount,
          user_name: user_name,
          address: address,
          tel_number: tel_number,
          user_id: user_id
        )

        Order.transaction do
        if @order.save
          items.each do |item_params|
            product_name = item_params["product_name"]
            quantity = item_params["quantity"]
            image = item_params["image"]
            product_id = item_params["product_id"]
            store_id = item_params["store_id"]
            price = item_params["amount"]
  
            order_item = OrderItem.new(
              order_id: @order.id,
              product_name: product_name,
              quantity: quantity,
              image: image,
              product_id: product_id,
              store_id: store_id,
              amount: price,
              address: address,
              user_name: user_name,
              tel_number: tel_number
            )

            unless order_item.save
              raise ActiveRecord::Rollback
              render json: {status: 'failure', message: 'order failed to create'}, status: 422
              return
            end
          end

          render json: {status: 'success', message: 'order created'}, status: 201
        else
          render json: @order, status: 422
        end
      end
    end

    def show_store_orders
        @orders = current_store.order_item
        render json: {data: @orders}
    end

end
# {
#   "order": {
#   "credit_card_cvv":"123",
#   "credit_card_exp_month":"05",
#   "credit_card_exp_year":"2024",
#   "credit_card_number":"4242424242424242",
#   "user_id":"1",
#   "user_name":"sam",
#   "address":"Block N18, Flat 3, Abesan Estate, Ipaja, Lagos State",
#   "tel_number":"08025464789",
#   "amount":"1200",
#   "items": [{
#     "store_id":"2",
#     "product_id":"1",
#     "product_name":"Iphone 14pro",
#     "image":"https://res.cloudinary.com/drfqge33t/image/upload/v1680779023/iphone_jcmivw.jpg",
#     "quantity":"5",
#     "price": "4645"
#     }]
#   }
# }