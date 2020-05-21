class SubscribeMedium < ApplicationRecord
  belongs_to :user
  belongs_to :medium

  validates :user, presence: true
  validates :medium, presence: true
end
