class Product < ApplicationRecord
    has_many :order, dependent: :destroy

    belongs_to :store, class_name: 'Store'
    belongs_to :category, class_name: 'Category'

    after_create :update_store
    after_create :update_store_value

    def update_store
       store.update(total_products: self.store.product.count)
    end

    def update_store_value
        new_store_value = store.store_value += (self.in_stock * self.price)
        store.update(store_value: new_store_value)
    end
end
