class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.belongs_to :category
      t.belongs_to :supplier

      t.string :product_name
      t.integer :quantity_per_unit
      t.decimal :unit_price
      t.integer :units_in_stock
      t.integer :units_on_order
      t.integer :reorder_level
      t.boolean :discontinued

      t.timestamps
    end
  end
end
