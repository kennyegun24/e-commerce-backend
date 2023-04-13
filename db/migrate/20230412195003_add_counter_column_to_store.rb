class AddCounterColumnToStore < ActiveRecord::Migration[7.0]
  def change
    remove_column :stores, :total_products
    add_column :stores, :total_products, :integer
    add_column :products, :in_stock, :integer
  end
end
