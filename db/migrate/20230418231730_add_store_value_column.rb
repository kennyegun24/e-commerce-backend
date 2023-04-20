class AddStoreValueColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :stores, :store_value, :integer, default: 0
  end
end
