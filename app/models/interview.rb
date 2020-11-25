class Interview < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  validates :time, presence: true
  validates :focus, presence: true
  validates :user, presence: true
  validates :experience, presence: true
  validates :interview_language, presence: true
end
