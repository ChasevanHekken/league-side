# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

League.create!(name: 'The Wyld Stallions', latitude: 1.2, longitude: 1.3, purchase_price: 4500)
League.create!(name: 'Team Zoidberg', latitude: 0.3, longitude: 0.2, purchase_price: 6000)
League.create!(name: 'The Zoomers', latitude: 0.5, longitude: 0.7, purchase_price: 1500)
League.create!(name: 'North Horseburg Little League', latitude: 0.6, longitude: 1.5, purchase_price: 3500)
League.create!(name: 'The Duloc Ogres', latitude: 1.1, longitude: 0.9, purchase_price: 2500)
