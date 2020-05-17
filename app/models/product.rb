class Product < ApplicationRecord
  belongs_to :luthier
  has_many :subscribe_products
  has_one_attached :picture

  resourcify



end
