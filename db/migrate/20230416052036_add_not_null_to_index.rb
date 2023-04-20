class AddNotNullToIndex < ActiveRecord::Migration[7.0]
  def change
    change_column_null :orders, :store_id, false
    change_column_null :orders, :product_id, false
    change_column_null :orders, :user_id, false
  end
end
