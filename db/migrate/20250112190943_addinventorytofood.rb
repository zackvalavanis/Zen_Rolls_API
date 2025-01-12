class Addinventorytofood < ActiveRecord::Migration[7.1]
  def change
    add_column :foods, :inventory, :integer
  end
end
