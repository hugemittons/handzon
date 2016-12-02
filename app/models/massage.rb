class Massage < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  CITIES = ["Barcelona", "San Francisco", "Paris", "London", "Auckland"]
  CATEGORIES = ["Thai", "Berber", "Swedish", "Holistic", "Shiatsu"]
  validates :category, inclusion: { in: CATEGORIES }
  validates :description, presence: true
  validates :tagline, presence: true
  validates :price, presence: true, uniqueness: true
  validates :length, presence: true, uniqueness: true
  validates :city, inclusion: { in: CITIES }, presence: true

  has_many :attachments
  belongs_to :user
  has_many :reviews, dependent: :destroy

  def average_rating
    review_array = []
    self.reviews.each do |review|
    review_array << review.rating
    end
    if review_array.length == 0
      return 0
    else
      average = review_array.inject(0, &:+) / review_array.length
      average.round
    end
  end


end
