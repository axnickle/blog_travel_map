class PhotosController < ApplicationController
  # url /photos/1
  def show
    @photo = Photo.find(params[:id]) # @
  end

  def index
    @photos = Photo.all
  end

  def new
    @location = Location.find(params[:location_id]) 
    @photo = @location.photos.new # set up the association
    #@photo = Photo.new
  end

  def create
    @location = Location.find(params[:location_id])
    @photo = @location.photos.new(photo_params)
    if @photo.save
      redirect_to location_photos_path(@location), notice: "photo was added"
    else
      render :new
  end
end

private

  def photo_params
  params.require(:photo).permit(:name, :image_url, :caption)
  end
end


# "whitelist", or explicitly allow, paramters, we're using the methods require
  # and 'permit'. This means we 'require' the name of the array or hash to be in Params
  # (otherwise it'll throw an error), and then we 'permit' the individual attributes inside
  # the hash to be used. Only specified params will retun the hash. Otherwise, nothing will show up
  # if we didn't whitlist, when we try to access params[:post] nothing would show up!
