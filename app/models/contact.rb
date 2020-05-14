class Contact < ApplicationRecord
  belongs_to :user

  enum prefered_frequency: [:instant, :day, :week, :indefinite]
end
