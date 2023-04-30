class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :user_name
      t.string :address
      t.integer :tel_number
      t.integer :amount
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
