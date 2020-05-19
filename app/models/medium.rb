class Medium < ApplicationRecord
  belongs_to :musician
  has_many :subscribe_media
  has_one_attached :picture

  resourcify
  
  include PgSearch::Model
  pg_search_scope :search_medium, against: [:name, :description], using: {
    tsearch: {negation: true}
  }
end
