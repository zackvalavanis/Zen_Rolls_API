class Makecostafloat < ActiveRecord::Migration[7.1]
  def change
    change_column :foods, :price, :float
  end
end
