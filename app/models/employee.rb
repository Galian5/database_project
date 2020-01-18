class Employee < ApplicationRecord
  validates :last_name, :first_name, :birthdate,
            :hiredate, :address, :city, :region,
            :postal_code, :country, presence: true
end
