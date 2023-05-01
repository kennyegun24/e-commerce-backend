class Order < ApplicationRecord
    attr_accessor :credit_card_number, :credit_card_exp_month, :credit_card_exp_year, :credit_card_cvv
    belongs_to :user, class_name: 'User'
    has_one :payment
    has_many :order_item

    after_create :update_admin_order
    after_create :create_payment

    enum payment_method: %i[credit_card]

    def create_payment
        params = {
            order_id: id,
            credit_card_number: credit_card_number,
            credit_card_exp_month: credit_card_exp_month,
            credit_card_exp_year: credit_card_exp_year,
            credit_card_cvv: credit_card_cvv
        }
        Payment.create!(params)
    end

    def update_admin_order
        Admin.update(order_count: Order.count )
    end
end
