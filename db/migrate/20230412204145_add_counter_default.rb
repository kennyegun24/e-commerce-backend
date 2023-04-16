class AddCounterDefault < ActiveRecord::Migration[7.0]
  def change
    change_column_default :stores, :total_products, 0
  end
end
