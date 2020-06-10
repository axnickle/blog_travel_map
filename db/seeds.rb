# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Location.create!(name: "Outer Banks",
                description: "Beach along the Atlantic Ocean",
                latitude:"13.458900",
                longitude:"98.476000",
                city:"Duck",
                state:"North Carolina",
                country:"USA",
                visit_date: "2020/05/27")
