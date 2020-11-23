class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :interview
  validates :user, presence: true
  validates :interview, presence: true
end
