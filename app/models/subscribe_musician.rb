class SubscribeMusician < ApplicationRecord
  belongs_to :user
  belongs_to :musician
end
