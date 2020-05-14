class Luthier < ApplicationRecord
  belongs_to :user
  has_many :products
  has_many :subscribe_luthiers
  has_many :invitations

  resourcify
  
end
