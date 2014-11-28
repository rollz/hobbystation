class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :flavor_text
      t.string :condition
      t.decimal :price
      t.integer :stock_quantity
      t.string :image_filename

      t.timestamps
    end
  end
end
