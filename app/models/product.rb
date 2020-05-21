class Product < ApplicationRecord
  belongs_to :luthier
  has_many :subscribe_products
  has_one_attached :picture
  
  resourcify
  # pg_search provides function to search this model
  include PgSearch::Model
  pg_search_scope :search_product, against: [:name, :description], using: {
    tsearch: {negation: true}
  }
  # base_price should be integer, name's length should be greater than 2
  validates :base_price, numericality: { only_integer: true }
  validates :name, length: { minimum: 2 }

end
