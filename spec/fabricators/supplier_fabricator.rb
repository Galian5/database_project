Fabricator(:supplier) do
  # products(count: 10)

  company_name { Faker::Company.name }
  contact_name { Faker::Name.name }
  address { Faker::Address.street_address }
  city { Faker::Address.city }
  region { Faker::Address.state }
  postal_code { Faker::Address.postcode }
  country { Faker::Address.country }
  phone { Faker::PhoneNumber.cell_phone }
end