class CreateStores < ActiveRecord::Migration[7.0]
  def change
    create_table :stores do |t|
      t.string :store_name
      t.string :total_products
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
