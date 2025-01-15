class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.references :cart, null: false, foreign_key: true
      t.decimal :total_price

      t.timestamps
    end
  end
end
