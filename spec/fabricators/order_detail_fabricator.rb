Fabricator(:order_detail) do
  product(inverse_of: product)

  unit_price { Faker::Number.positive}
  quantity { Faker::Number.number(digits: 2)}
  discount { Faker::Number.within(range: 1..100) }
end