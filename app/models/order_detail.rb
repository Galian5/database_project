class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :product

  validates :unit_price, :quantity, :discount, presence: true
end
