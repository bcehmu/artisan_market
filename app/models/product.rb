class Product < ApplicationRecord
  belongs_to :luthier
  has_many :subscribe_products

  resourcify



end
