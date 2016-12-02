class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :massage
  validates :date_time, presence: true
end
