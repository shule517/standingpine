class Article < ApplicationRecord
  belongs_to :artist
  has_many :exhibition_articles
  has_many :exhibitions, through: :exhibition_articles

  validates :title_ja, presence: true, unless: :title_present?
  validates :title_en, presence: true, unless: :title_present?
  validates :image, presence: true

  has_attached_file :image, styles: {
    medium: "300x300>",
    thumbnail: "100x100#"
  }

  validates_attachment :image, content_type: {
    content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"],
  }, size: { in: 0..5.megabytes }
end
