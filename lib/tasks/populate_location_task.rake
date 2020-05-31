
# give me access to Ruby's CSV class
require 'csv'

# write your task that loops through the csv file line-by-line
namespace :db do # 'do' = type of block
  desc "Populate Location data from CSV file"

  task populate_locations: :environment do
    # inside of rails, we can join strings together - strings are being join by the join method
    source_file = Rails.root.join('lib', 'tasks', 'data', 'locations.csv')
      # gaining access to cvs class by requiring (line3) csv library (witnin my project); there is a 'header row'; iterate through each row of the csv file
      CSV.foreach(source_file, headers: true).each do |row| #each row in the database/csv file
        # "Location" is data model; location is each location within the csv file
        # with the csv row create a Location database record using a hash from row in the csv - ex: {name:value, email:value}
        # next if Location.exists?(name: row["name"])
        if (Location.exists?(name: row["name"]) )
          puts "skipped #{row["name"]}"
          next
        end
        location = Location.create!(row.to_h) #to convert to a hash
        puts location.name # made record from the create! method - "!" - will return an error if a record cannot be create
      end
  end
end

# csv_content = [this array has a bunch of csv records in it]
# csv_content.each do |row| # iterate through each row of the csv content
#   incoming_name = row[0] #
# next if Location.exists?(name: row["name"])
# Location.create(row.to_h)
# end

# Example of `next`
# a = [1, 2, 3]
# a.each do |num| # a is being iterated through each number
#   next if num < 2 # if num is <2, next = skip it ; if it's "next", going to the next item
#   puts num        # line 34 won't excute if line 33 is true
# end
# # console output
# 2
# 3
# => [1, 2, 3]
