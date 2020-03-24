# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Location.destroy_all
Location.create([
  {name: "Pacific Ocean", description: "the really big ocean off the west of US", state:"California", city:"San Francisco", latitude: 37.780079, longitude: -122.420174, visit_date: "2020/01/01", country: "USA"},
])
10.times do # loop 10 times and do whatever
  Location.create([
    {name: Faker::Movies::HarryPotter.location,
       description: Faker::Lorem.sentence,
       state: Faker::Address.state,
       city: Faker::Address.city,
       latitude: Faker::Address.latitude,
       longitude: Faker::Address.longitude,
       visit_date: Faker::Date.between(from: 2.days.ago, to: Date.today),
       country: Faker::Address.country},
  ])


end
