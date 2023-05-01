class Product < ApplicationRecord
    has_many :order_item, dependent: :destroy

    belongs_to :store, class_name: 'Store'
    belongs_to :category, class_name: 'Category'

    after_create :update_store
    after_create :update_store_value
    after_create :update_admin_product_count

    def update_store
       store.update(total_products: self.store.product.count)
    end

    def update_store_value
        new_store_value = store.store_value += (self.in_stock * self.price)
        store.update(store_value: new_store_value)
    end
    
    def update_admin_product_count
        Admin.update(product_count: Product.count )
    end
end
