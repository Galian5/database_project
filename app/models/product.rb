class Product < ApplicationRecord
  belongs_to :category
  belongs_to :supplier

  validates :product_name, :quantity_per_unit,
            :unit_price, :units_in_stock, :units_on_order,
            :reorder_level, presence: true
end
