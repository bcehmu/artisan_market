class Invitation < ApplicationRecord
  belongs_to :user
  belongs_to :luthier
  belongs_to :musician
end
