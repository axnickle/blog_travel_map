class Location < ActiveRecord::Base
  #name is one of the unique columns in the locations table (see schema.rb)
  validates :name, uniqueness: true
  validates :name, presence: true
  validates :name,
            presence: true,
            uniqueness: { case_sensitive: false}
  validates :longitude, presence: true
  validates :latitude, presence: true
end

#Location model is building off of ActiveRecord::Base
#Model connects to information(data) in the database to pull information route
#then will pass information to the Controller

#The validation happens by performing an SQL query into the model's table,
#searching for an existing record with the same value in that attribute.

#making a validation that requires the presence of an attribute is to help you make sure
  #that you are getting all of the data you need to make your app work.
    #Adding a uniqueness constraint helps to make sure users don't enter duplicate data.
