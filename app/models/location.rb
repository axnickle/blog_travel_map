class Location < ActiveRecord::Base
  #name is one of the unique columns in the locations table (see schema.rb)
  validates :name, uniqueness: true

end

#Location model is building off of ActiveRecord::Base
#Model connects to information(data) in the database to pull information route
#then will pass information to the Controller
