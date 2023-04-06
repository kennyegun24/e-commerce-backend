class Product < ApplicationRecord
    belongs_to :store, class_name: 'Store'
    belongs_to :category, class_name: 'Category'
end
