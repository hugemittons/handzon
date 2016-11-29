class Massage < ApplicationRecord
  CATEGORIES = ["thai", "berber", "swedish", "japanese", "korean"]
  validates :category, inclusion: { in: CATEGORIES }
  validates :description, presence: true
  validates :tagline, presence: true
  validates :price, presence: true, uniqueness: true
  validates :length, presence: true, uniqueness: true

  has_many :attachments
  belongs_to :user, through: :users

end
