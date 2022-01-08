class RemoveForeignKeyFromItems < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :line_items, :items
  end
end
