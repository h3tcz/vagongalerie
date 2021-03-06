module Sluggable
  extend ActiveSupport::Concern

  included do
    before_save :set_slug

    scope :published, -> { where(published: true) }

    def set_slug
      self.slug = title.parameterize if title_changed?
    end

    def published_word
      published ? "Yes" : "No"
    end
  end
end
