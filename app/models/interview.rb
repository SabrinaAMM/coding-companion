class Interview < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  validates :focus, presence: true
  validates :user, presence: true
  validates :experience, presence: true
  validates :interview_language, presence: true

  validates :start_time, :end_time, presence: true
  validate :end_time_after_start_time


  def unavailable_dates
    bookings.pluck(:start_time, :end_time).map do |range|
      { from: range[0], to: range[1] }
    end
  end

  def other_user(user)
    if user == self.user
      return self.users.first
    else
      return self.user
    end
  end

  private

  def end_time_after_start_time
    return if end_time.blank? || start_time.blank?

    if end_time < start_time
      errors.add(:end_time, "must be after the start date")
    end
 end
end
