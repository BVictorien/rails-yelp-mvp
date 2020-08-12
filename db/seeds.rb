# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
pizza1 = { name: "pizza1", address: "7 Boundary St, London E2 7JE", category: "italian", rating: 5 }
pizza2 =  { name: "pizza2", address: "56A Shoreditch High St, London E1 6PQ", category: "italian", rating: 4 }
pizza3 = { name: "pizza3", address: "7 Boundary St, London E2 7JE", category: "italian", rating: 2 }
wokwok = { name: "wokwok", address: "8 Boundary St, London E2 7JE", category: "chinese", rating: 5 }
woky = { name: "woky", address: "19 Boundary St, London E2 7JE", category: "chinese", rating: 3 }

[pizza1, pizza2, pizza3, wokwok, woky].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"