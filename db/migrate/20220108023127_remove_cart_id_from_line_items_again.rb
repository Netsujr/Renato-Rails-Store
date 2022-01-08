class RemoveCartIdFromLineItemsAgain < ActiveRecord::Migration[6.1]
  def change
    add_reference :line_items, :cart, index: true
    remove_reference :line_items, :cart_id, index: true
  end
end
