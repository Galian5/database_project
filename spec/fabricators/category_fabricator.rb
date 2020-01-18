Fabricator(:category) do
  # products(count: 20)

  name { Faker::Markdown.headers }
  description { Faker::Markdown.emphasis }
end