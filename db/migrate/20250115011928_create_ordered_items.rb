class CreateOrderedItems < ActiveRecord::Migration[7.1]
  def change
    create_table :ordered_items do |t|
      t.references :order, null: false, foreign_key: true
      t.references :cart_item, null: false, foreign_key: { to_table: :cart_items }

      t.timestamps
    end
  end
end
