
# give yourself access to Ruby's CSV class
require 'csv'

# write your task that loops through the csv file line-by-line
namespace :db do
  desc "Populate Location data from CSV file"

  task :populate_locations do

    source_file = Rails.root.join('lib', 'tasks', 'data', 'locations.csv')

      CSV.foreach(source_file, headers: true).each do |row| #each row in the database/csv file
        # location = Location.create!(row.to_h) #to covert to a hash
        # puts location.name
        Location.last
      end

  end
end
