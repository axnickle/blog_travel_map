class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def show
    @location = Location.find(params[:id])
  end
end

#both Location.all is a model method defined by Rails
#find - only expects you to give it the 'ID' - only find by (params[:id])
