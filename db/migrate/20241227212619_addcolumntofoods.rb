class Addcolumntofoods < ActiveRecord::Migration[7.1]
  def change
    add_column :foods, :description, :text
  end
end
