class DropUserIdInStore < ActiveRecord::Migration[7.0]
  def change
    remove_column :stores, :user_id, :bigint
  end
end
