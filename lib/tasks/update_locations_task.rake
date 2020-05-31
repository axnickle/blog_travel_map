# alternative way of building a new activerecord mdoel and save it to the database
  # this way, if my csv changes, this can over-ride the database for the given record
require 'csv'

namespace :db do
  desc "Update Location data from CSV file"

  task update_locations: :environment do
      source_file = Rails.root.join('lib', 'tasks', 'data', 'locations.csv')

      CSV.foreach(source_file, headers: true).each do |row|
        # if it cannot find the record in the database, it'll create one
        # else, it'll update ALL attributes 
      location = Location.where(name: row["name"]).first_or_create!(row.to_h)
      #location =  Location.find_or_create_by(name: row["name"])
      puts location.name
      end
  end
end
