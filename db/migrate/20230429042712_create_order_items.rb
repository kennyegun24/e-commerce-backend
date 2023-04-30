class CreateOrderItems < ActiveRecord::Migration[7.0]
  def change
    create_table :order_items do |t|
      t.string :product_name
      t.integer :quantity
      t.string :image
      t.integer :price
      t.references :order, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.references :store, null: false, foreign_key: true

      t.timestamps
    end
  end
end
