module MassagesHelper
  def check_user_has_photo
    if @massage.photo.blank?
      image_path 'massage-bg-placeholder.jpg'
    else
      cl_image_path @massage.photo, height: 300, width: 400, crop: :fill
    end
  end
end
