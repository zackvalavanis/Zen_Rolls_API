class CreateCartItems < ActiveRecord::Migration[7.1]
  def change
    create_table :cart_items do |t|
      t.references :food, null: false, foreign_key: true
      t.integer :quantity
      t.references :cart, null: false, foreign_key: true

      t.timestamps
    end
  end
end
