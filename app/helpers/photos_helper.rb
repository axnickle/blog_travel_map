module PhotosHelper
  def image_source(photo)
    path = "https://placehold.it/300x300.png" if photo.blank? 
    path = photo.filepath.present? ? photo.filepath : photo.image_url
    image_tag(path)
  end

  
end
