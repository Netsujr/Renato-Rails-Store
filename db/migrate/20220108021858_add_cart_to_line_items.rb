# frozen_string_literal: true

class AddCartToLineItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :line_items, :cart, index: true
  end
end
