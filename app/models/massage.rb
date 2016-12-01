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


end
