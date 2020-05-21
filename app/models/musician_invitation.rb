class MusicianInvitation < ApplicationRecord
  belongs_to :musician
  
  resourcify

  validates :musician, presence: true
  validates :msg, length: {minimum:2}
end
