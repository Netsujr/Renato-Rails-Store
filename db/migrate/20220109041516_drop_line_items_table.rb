class DropLineItemsTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :line_items
  end
end
