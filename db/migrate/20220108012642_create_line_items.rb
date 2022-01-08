# frozen_string_literal: true

class CreateLineItems < ActiveRecord::Migration[6.1]
  def change
    create_table :line_items do |t|
      t.references :item, foreign_key: true
      t.string :cart, foreign_key: true

      t.timestamps
    end
  end
end
