class AddAmountToStore < ActiveRecord::Migration[7.0]
  def change
    add_column :stores, :total_sold, :integer, default: 0
  end
end
