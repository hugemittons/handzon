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

  def get_avatar_cards(massage)
    if massage.user.photo.blank?
      image_tag "http://placehold.it/50x50", class: "card-user avatar-large"
    else
      cl_image_tag massage.user.photo, height: 50, width: 50, crop: :fill, gravity: :face, class: 'card-user avatar-large'
    end
  end

  def check_massage_has_photo_card(massage)
    if massage.photo.blank?
      image_path 'massage-bg-placeholder.jpg'
    else
      cl_image_path massage.photo, height: 300, width: 400, crop: :fill
    end
  end

  def check_massage_image(massage)
    if massage.photo.blank?
      image_path 'bg-landing.jpg'
    else
      cl_image_path massage.photo
    end
  end

  def add_review_show
    render 'massages/add_review' if user_signed_in?
  end

  def massage_editor
    render 'pages/massage_editor' if current_user.masseuse?
  end
end
