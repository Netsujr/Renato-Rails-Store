# frozen_string_literal: true

class AddImageToItems < ActiveRecord::Migration[6.1]
  def change
    add_column :items, :image, :string
  end
end
