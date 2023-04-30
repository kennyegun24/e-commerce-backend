class AddColumnsToOrderItem < ActiveRecord::Migration[7.0]
  def change
    add_column :order_items, :user_name, :string
    add_column :order_items, :address, :string
    add_column :order_items, :tel_number, :integer
    add_column :order_items, :amount, :integer
    remove_column :order_items, :price
  end
end
