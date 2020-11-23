class Message < ApplicationRecord
  belongs_to :user
  belongs_to :interview
  validates :user, presence: true
  validates :interview, presence: true
  validates :content, presence: true, length: { minimum: 1 }
end
