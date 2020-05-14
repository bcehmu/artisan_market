class Medium < ApplicationRecord
  belongs_to :musician
  has_many :subscribe_media

  resourcify
  
end
