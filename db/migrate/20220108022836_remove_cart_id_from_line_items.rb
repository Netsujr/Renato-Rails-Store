class RemoveCartIdFromLineItems < ActiveRecord::Migration[6.1]
  def change
    remove_reference :line_items, :cart, index: true
  end
end
