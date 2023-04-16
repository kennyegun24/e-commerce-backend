class Product < ApplicationRecord
    has_many :order, dependent: :destroy

    belongs_to :store, class_name: 'Store'
    belongs_to :category, class_name: 'Category'

    after_create :update_store

    def update_store
        store.update(total_products: store.product.count)
    end
end
