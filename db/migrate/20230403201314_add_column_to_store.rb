class AddColumnToStore < ActiveRecord::Migration[7.0]
  def change
    add_column :stores, :address, :string
    add_column :stores, :email, :string
    add_column :stores, :password_digest, :string
  end
end
