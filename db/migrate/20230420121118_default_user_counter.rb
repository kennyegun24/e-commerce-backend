class DefaultUserCounter < ActiveRecord::Migration[7.0]
  def change
    change_column_default :admins, :user_count, 0
  end
end
