require 'faker'

Restaurant.destroy_all
categories = %w[chinese italian japanese french belgian]

5.times do
  restaurant = {
    name: Faker::Restaurant.name, category: categories.sample,
    address: Faker::Address.street_address
  }
  Restaurant.create(restaurant)
end
