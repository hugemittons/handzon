module MassagesHelper
  def check_user_has_photo
    if @massage.photo.blank?
      image_path 'massage-bg-placeholder.jpg'
    else
      cl_image_path @massage.photo, height: 300, width: 400, crop: :fill
    end
  end


  def get_avatar
    if @massage.user.photo.blank?
      image_tag "http://placehold.it/100x100", class: "card-user"
    else
      cl_image_tag @massage.user.photo, height: 100, width: 100, crop: :fill, gravity: :face
    end
  end

  def add_review_show
    if user_signed_in?
      render 'massages/add_review'
    else
    end
  end
end
