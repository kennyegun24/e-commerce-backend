class AddImageToStore < ActiveRecord::Migration[7.0]
  def change
    add_column :stores, :image, :string
    remove_column :stores, :address
  end
end
