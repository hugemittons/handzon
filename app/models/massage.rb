class Massage < ApplicationRecord
  CATEGORIES = ["Thai", "Berber", "Swedish", "Japanese", "Korean"]
  validates :category, inclusion: { in: CATEGORIES }
  validates :description, presence: true
  validates :tagline, presence: true
  validates :price, presence: true, uniqueness: true
  validates :length, presence: true, uniqueness: true

  has_many :attachments


end
