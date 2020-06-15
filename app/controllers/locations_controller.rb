class LocationsController < ApplicationController
  # from url locations/1
  def show
    puts "*********** #{params}"
    @location = Location.find(params[:id])
  end

  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
    @photos = Photo.all
  end


#both Location.all is a model method defined by Rails
#find - only expects you to give it the 'ID' - only find by (params[:id])


private

  def location_params
    params.require(:location).permit(:latitude, :longitude, :city, :country,
                                      :visit_date, :state, :name, :description)

  end
end
