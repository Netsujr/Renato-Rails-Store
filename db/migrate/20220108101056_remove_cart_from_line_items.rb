class RemoveCartFromLineItems < ActiveRecord::Migration[6.1]
  def change
    remove_column :line_items, :cart, :string
  end
end
