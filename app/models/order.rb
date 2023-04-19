class Order < ApplicationRecord
    belongs_to :store, class_name: 'Store'
    belongs_to :user, class_name: 'User'
    belongs_to :product, class_name: 'Product'

    validate :check_store_id
    validate :check_quantity

    after_create :update_product
    after_create :update_store_amount

    def update_product
        if product.in_stock >= self.quantity
            product.update(in_stock: product.in_stock - self.quantity)
        end
    end

    def update_store_amount
        store.update(total_sold: store.total_sold += self.amount)
    end

    private
  
    def check_store_id
      unless store_id == product.store_id
        errors.add(:store_id, "must match the product's store_id")
      end
    end

    def check_quantity
        unless product.in_stock >= self.quantity
            errors.add(:quantity, 'Should not be negative')
        end
    end
end
