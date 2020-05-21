class Medium < ApplicationRecord
  belongs_to :musician
  has_many :subscribe_media
  has_one_attached :picture

  resourcify
  # pg_search provides tools to search in this model
  include PgSearch::Model
  pg_search_scope :search_medium, against: [:name, :description], using: {
    tsearch: {negation: true}
  }

  # The following validation method is by ![This QA](https://stackoverflow.com/questions/7167895/rails-whats-a-good-way-to-validate-links-urls)
  class HttpUrlValidator < ActiveModel::EachValidator

    def self.compliant?(value)
      uri = URI.parse(value)
      uri.is_a?(URI::HTTP) && !uri.host.nil?
    rescue URI::InvalidURIError
      false
    end
  
    def validate_each(record, attribute, value)
      unless value.present? && self.class.compliant?(value)
        record.errors.add(attribute, "is not a valid HTTP URL")
      end
    end
  
  end
  
  # in the model
  validates :link, http_url: true
end
