class SubscribeMusician < ApplicationRecord
  belongs_to :user
  belongs_to :musician

  validates :user, presence: true
  validates :musician, presence: true
end
