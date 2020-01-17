class Shipper < ApplicationRecord
  validates :company_name, :phone, presence: true
end
