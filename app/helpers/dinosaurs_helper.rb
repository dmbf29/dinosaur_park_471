module DinosaursHelper
  def dinosaur_photo_url(dinosaur)
    dinosaur.photo.attached? ? cl_image_path(dinosaur.photo.key) : dinosaur.image_url
  end
end
