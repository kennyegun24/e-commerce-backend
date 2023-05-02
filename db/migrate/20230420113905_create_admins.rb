class CreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      t.string :email
      t.string :password_digest
      t.integer :user_count, default: 0
      t.integer :product_count, default: 0
      t.integer :store_count, default: 0
      t.integer :order_count, default: 0

      t.timestamps
    end
  end
end
