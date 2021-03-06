class Supplier < ApplicationRecord
  has_many :products

  validates :company_name, :contact_name, :address, :city, :region,
            :postal_code, :country, :phone, presence: true
end
