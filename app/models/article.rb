class Article < ApplicationRecord
  belongs_to :artist

  validates :title_ja, presence: true, unless: :title_present?
  validates :title_en, presence: true, unless: :title_present?
  validates :image, presence: true

  has_attached_file :image, styles: {
    medium: "300x300>",
    thumbnail: "100x100#"
  }

  validates_attachment :image, content_type: {
    content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  }
end
