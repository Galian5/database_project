Fabricator(:order) do
  order_details(count: 5)

  order_date { Faker::Date.between(from: 100.days.ago, to: 14.days.ago) }
  required_date { Faker::Date.between(from: 7.days.from_now, to: 14.days.from_now) }
  shipped_date { Faker::Date.backward(days: 13) }
  freight { Faker::Number.number(digits: 2) } # fracht to taka oplata za dostarczenie nieuszkodzonego towaru, wedlug google
  ship_name { Faker::Name.name }
  ship_address { Faker::Address.street_address }
  ship_city { Faker::Address.city }
  ship_region { Faker::Address.state }
  ship_postalcode { Faker::Address.postcode }
  ship_country { Faker::Address.country }
end