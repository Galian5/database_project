class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.belongs_to :customer

      t.date :order_date
      t.date :required_date
      t.date :shipped_date
      t.decimal :freight
      t.string :ship_name
      t.string :ship_address
      t.string :ship_city
      t.string :ship_region
      t.string :ship_postalcode
      t.string :ship_country

      t.timestamps
    end
  end
end
