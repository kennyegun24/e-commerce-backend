class User < ApplicationRecord
    has_secure_password

    has_many :order

    validates :name, presence: true, length: {maximum: 10}
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: {minimum: 8}
    
end
