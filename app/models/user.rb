class User < ApplicationRecord
    has_secure_password

    has_many :order

    validates :name, presence: true, length: {maximum: 10}
    validates :email, presence: true, uniqueness: true
    
    after_create :update_user_count
    
    def update_user_count
        Admin.update(user_count: User.count )
    end
end
