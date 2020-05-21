class Contact < ApplicationRecord
  belongs_to :user

  has_one_attached :avatar
  has_one_attached :logo

  enum prefered_frequency: [:instant, :day, :week, :indefinite]

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
