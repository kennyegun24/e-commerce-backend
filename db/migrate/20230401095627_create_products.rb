class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :size
      t.string :color
      t.decimal :price
      t.string :image
      t.string :details
      t.string :description
      t.integer :in_stock
      t.references :store, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps
    end
  end
end
