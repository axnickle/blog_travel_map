# give access to Ruby's CSV class
require 'csv'
namespace :new_location do
  desc "Ceate new records only when name is unique"

  # write the task that loops through the csv file line-by-line
  task : create_new_location: :environment do

    source_file = Rails.root.join('lib', 'tasks', 'data', 'locations.csv')

    CSV.foreach(source_file, headers: true).each do |row| # each row int he database/cvs file

    location = Location.create!(row.to_h) # to covert to a hash
    puts location.name

    end
  end
end
