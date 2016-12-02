class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :photo, UserPhotoUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :appointments, dependent: :destroy
  has_many :massages, dependent: :destroy

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :encrypted_password, presence: true
end
