class Removecartitems < ActiveRecord::Migration[7.1]
  def change
    remove_column :carts, :food_id, :integer if column_exists?(:carts, :food_id)
    remove_column :carts, :quantity, :string if column_exists?(:carts, :quantity)
    remove_column :carts, :integer, :string if column_exists?(:carts, :integer)
  end
end
