class Article < ApplicationRecord
  include Sluggable

  belongs_to :category, class_name: "ArticleCategory"

  validates :title, presence: true, uniqueness: true
  validates :content, presence: true
end
