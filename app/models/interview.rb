
class Interview < ApplicationRecord
  include Filterable
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  validates :focus, presence: true
  validates :user, presence: true
  validates :experience, presence: true
  validates :interview_language, presence: true

  validates :start_time, :end_time, presence: true
  validate :end_time_after_start_time

  scope :filter_by_date, -> (date) { where date: date }
  scope :filter_by_interview_language, -> (interview_language) { where interview_language: interview_language }
  scope :filter_by_experience, -> (experience) { where experience: experience }
  scope :filter_by_focus, -> (focus) { where focus: focus }

  def unavailable_dates
    bookings.pluck(:start_time, :end_time).map do |range|
      { from: range[0], to: range[1] }
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
