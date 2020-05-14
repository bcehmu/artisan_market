class Musician < ApplicationRecord
  belongs_to :user
  has_many :media
  has_many :subscribe_musicians
  has_many :invitations

  resourcify
  
end
