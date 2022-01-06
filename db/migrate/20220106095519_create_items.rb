class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :title
      t.decimal :price, precision: 5, scale: 2, default: 0
      t.text :description
      t.string :condition

      t.timestamps
    end
  end
end
