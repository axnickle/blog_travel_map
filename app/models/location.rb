class Location < ActiveRecord::Base
  has_many :photos
end

#Location model is building off of ActiveRecord::Base
#Model connects to information(data) in the database to pull information route
#then will pass information to the Controller
