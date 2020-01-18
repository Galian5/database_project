class CreateOrderDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :order_details do |t|
      t.belongs_to :order
      t.belongs_to :product

      t.decimal :unit_price
      t.integer :quantity
      t.decimal :discount

      t.timestamps
    end
  end
end
