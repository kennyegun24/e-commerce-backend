class ChangeNumberToBigint < ActiveRecord::Migration[7.0]
  def change
    change_column :orders, :tel_number, :text
  end
end
