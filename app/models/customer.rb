class Customer < ApplicationRecord
  has_many :orders

  validates :company_name, :contact_name, :contact_title, :address,
            :city, :region, :postal_code, :country, :phone, presence: true
end
