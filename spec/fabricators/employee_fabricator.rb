Fabricator(:employee) do
  last_name { Faker::Name.last_name }
  first_name { Faker::Name.first_name }
  birthdate { Faker::Date.between(from: 70.years.ago, to: 18.years.ago) }
  hiredate { Faker::Date.between(from: 3.years.ago , to: 3.months.ago) }
  address { Faker::Address.street_address }
  city { Faker::Address.city }
  region { Faker::Address.state }
  postal_code { Faker::Address.postcode }
  country { Faker::Address.country }
end