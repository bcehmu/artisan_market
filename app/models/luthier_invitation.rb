class LuthierInvitation < ApplicationRecord
  belongs_to :luthier
  
  resourcify

  validates :luthier, presence: true
  validates :msg, length: {minimum:2}
end
