Fabricator(:product) do
  category(inverse_of: :category)
  supplier(inverse_of: :supplier)

  product_name { Faker::Device.model_name }
  quantity_per_unit { Faker::Number.number(digits: 2) }
  # unit_price { Faker::Number.between(from: 10, to: 100) }
  unit_price { Faker::Number.decimal(l_digits: 2, r_digits: 2) }
  units_in_stock { Faker::Number.number(digits: 2) }
  units_on_order { Faker::Number.number(digits: 2) }
  reorder_level { Faker::Number.number(digits: 1) }
  discontinued { Faker::Boolean.boolean(true_ratio: 0.8)}
end