class PendingUser < ApplicationRecord
  belongs_to :user

  enum status: [:pending, :solved, :blacklisted]
end
