class Category < ApplicationRecord
    has_many :product, foreign_key: 'category_id', class_name: 'Product'
end
