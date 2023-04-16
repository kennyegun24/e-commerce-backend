class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :product_name
      t.string :user_name
      t.string :image
      t.integer :quantity
      t.string :address
      t.integer :tel_number
      t.references :user, index: true, foreign_key: true
      t.references :store, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true

      t.timestamps
    end
  end
end
