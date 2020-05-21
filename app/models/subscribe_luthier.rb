class SubscribeLuthier < ApplicationRecord
  belongs_to :user
  belongs_to :luthier

  validates :user, presence: true
  validates :luthier, presence: true
end
