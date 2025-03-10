class AddForeignKeyToOrdersUserId < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :orders, :users, column: :user_id
  end
end
