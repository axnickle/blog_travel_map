# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# lines 10-24 are for development work
# Location.create([
# Location.destroy_all
# Location.create([
#   {name: "Pacific Ocean", description: "the really big ocean off the west of US", state:"California", city:"San Francisco", latitude: 37.780079, longitude: -122.420174, visit_date: "2020/01/01", country: "USA"},
# ])
# 10.times do # loop 10 times and do whatever
#   {name: Faker::Movies::HarryPotter.location,
#      description: Faker::Lorem.sentence,
#      state: Faker::Address.state,
#      city: Faker::Address.city,
#      latitude: Faker::Address.latitude,
#      longitude: Faker::Address.longitude,
#      visit_date: Faker::Date.between(from: 2.days.ago, to: Date.today),
#      country: Faker::Address.country},
# ])

# Location.create!(name: "Outer Banks",
#                 description: "Beach along the Atlantic Ocean",
#                 latitude:"13.458900",
#                 longitude:"98.476000",
#                 city:"Duck",
#                 state:"North Carolina",
#                 country:"USA",
#                 visit_date: "2020/05/27")

#Rake::Task['db:update_locations'].invoke

Location.all.each do |location|
  3.times do
    Photo.create({
      location_id: location.id,
      name: Faker::Dessert.variety,
      caption: Faker::Marketing.buzzwords,
      filepath: Faker::Placeholdit.image,
      date: Faker::Date.between(from:5.days.ago, to:Date.today)
    })
  end
end
