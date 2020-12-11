class HomeController < ApplicationController

  def home 
    @photo = Photo.all.shuffle.first
  end 
    
end
