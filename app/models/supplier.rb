class Supplier < ApplicationRecord
  validates :company_name, :contact_name, :address, :city, :region,
            :postal_code, :country, :phone, :fax, :homepage, presence: true
end
