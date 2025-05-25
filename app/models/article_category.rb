class ArticleCategory < ApplicationRecord
  include Sluggable

  validates :title, presence: true, uniqueness: true
end
