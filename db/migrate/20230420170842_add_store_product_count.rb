class AddStoreProductCount < ActiveRecord::Migration[7.0]
  def change
    add_column :admins, :store_count, :integer, default: 0
    add_column :admins, :product_count, :integer, default: 0
    add_column :admins, :order_count, :integer, default: 0
  end
end
