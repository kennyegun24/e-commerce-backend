class Store < ApplicationRecord
    has_secure_password
    
    has_many :product, foreign_key: 'store_id', class_name: 'Product'

    validates :store_name, presence: true, length: {maximum: 15}
    validates :image, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: {minimum: 6}
end
