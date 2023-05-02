class CreateStores < ActiveRecord::Migration[7.0]
  def change
    create_table :stores do |t|
      t.string :store_name
      t.string :email
      t.string :password_digest
      t.string :image
      t.integer :total_products, default: 0
      t.integer :total_sold, default: 0
      t.integer :store_value, default: 0

      t.timestamps
    end
  end
end
