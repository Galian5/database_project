# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  Fabricate(:customer)
end

# 10.times do
#   Fabricate(:supplier)
# end
#
3.times do
  Fabricate(:category)
end

8.times do
  Fabricate(:employee)
end

5.times do
  Fabricate(:shipper)
end

250.times do
  Fabricate(:product)
end