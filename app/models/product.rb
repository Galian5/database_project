class Product < ApplicationRecord
  belongs_to :category
  belongs_to :supplier

  validates :quantity_per_unit, :units_on_order,
            :reorder_level, numericality: true, presence: true

  validates :product_name, length: { minimum: 3}, uniqueness: true, presence: true
  validates :unit_price, :units_in_stock, numericality: {greater_than: 0}, presence: true

end
