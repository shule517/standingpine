class Exhibition < ApplicationRecord
  has_many :connections
  has_many :artists, through: :connections
  has_many :exhibition_articles
  has_many :articles, through: :exhibition_articles

  validates :title_ja, presence: true, unless: :title_present?
  validates :title_en, presence: true, unless: :title_present?
  validates :description_ja, presence: true, unless: :description_present?
  validates :description_en, presence: true, unless: :description_present?
  validates :cover_image, presence: true

  has_attached_file :cover_image, styles: {
    thumbnail: "100x100#"
  }

  validates_attachment :cover_image, content_type: {
    content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"],
  }, size: { in: 0..5.megabytes }
end
