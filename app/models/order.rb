class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_details

  validates :order_date, :required_date, :shipped_date, :freight, :ship_name,
            :ship_address, :ship_city, :ship_region,
            :ship_postalcode, :ship_country, presence: true
end
