class ChangeColumnType < ActiveRecord::Migration[7.0]
  def change
    change_column :order_items, :tel_number, :string
    change_column :orders, :tel_number, :string
  end
end
