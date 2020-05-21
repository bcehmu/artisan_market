class Contact < ApplicationRecord
  belongs_to :user

  has_one_attached :avatar
  has_one_attached :logo

  enum prefered_frequency: {instant: -1, day: 0, week: 1, indefinite: 2}

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
