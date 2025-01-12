class CreateCarts < ActiveRecord::Migration[7.1]
  def change
    create_table :carts do |t|
      t.integer :food_id
      t.string :quantity
      t.string :integer

      t.timestamps
    end
  end
end
