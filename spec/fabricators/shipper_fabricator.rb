Fabricator(:shipper) do
  company_name { Faker::Company.name }
  phone { Faker::PhoneNumber.cell_phone }
end