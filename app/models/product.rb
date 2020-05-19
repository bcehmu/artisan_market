class Product < ApplicationRecord
  belongs_to :luthier
  has_many :subscribe_products
  has_one_attached :picture

  resourcify

  include PgSearch::Model
  pg_search_scope :search_product, against: [:name, :description], using: {
    tsearch: {negation: true}
  }
  

end
