class User < ApplicationRecord
    has_secure_password

    has_many :order

    validates :name, presence: true, length: {maximum: 10}
    validates :email, presence: true, uniqueness: true
    validates :stripe_id, presence: true
    
    after_create :update_user_count
    before_validation :create_on_stripe, on: :create
    
    def update_user_count
        Admin.update(user_count: User.count )
    end

    def create_on_stripe
        params = {
            email: email,
            name: name,
        }
        response = Stripe::Customer.create(params)
        self.stripe_id = response.id
    end
end
