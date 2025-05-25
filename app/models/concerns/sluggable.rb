module Sluggable
  extend ActiveSupport::Concern

  included do
    validates :slug, presence: true, uniqueness: true

    before_validation :generate_slug

    def generate_slug
      self.slug = (slug.presence || title).to_s.parameterize
    end

    def self.find(slug)
      find_by!(slug:)
    rescue ActiveRecord::RecordNotFound
      super
    end
  end
end
