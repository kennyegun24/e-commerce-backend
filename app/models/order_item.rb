class OrderItem < ApplicationRecord
  belongs_to :store, class_name: 'Store'
  belongs_to :product, class_name: 'Product'

  belongs_to :order

  validates :product_name, presence: true
  validates :quantity, presence: true, numericality: {greater_than: 0}
  validates :image, presence: true

  validate :check_store_id
  validate :check_quantity

  after_create :update_product
  after_create :update_store_amount


  def update_product
    if product.in_stock >= self.quantity
        product.update(in_stock: product.in_stock - self.quantity)
    end
  end

  def update_store_amount
    store.update(total_sold: store.total_sold += self.amount)
  end

  private
  
  def check_store_id
    unless store_id == product.store_id
      errors.add(:store_id, "must match the product's store_id")
    end
  end

  def check_quantity
    unless product.in_stock >= self.quantity
      errors.add(:quantity, 'Cannot buy more than what is in store')
    end
  end

end
