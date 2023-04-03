class Store < ApplicationRecord
    belongs_to :user
    has_many :product, foreign_key: 'store_id', class_name: 'Product'
    # has_many :stores, foreign_key: 'user_id', class_name: 'Store'

    validates :store_name, presence: true, length: {maximum: 15}
end
