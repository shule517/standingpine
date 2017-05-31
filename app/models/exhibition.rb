class Exhibition < ApplicationRecord
  has_many :artist_exhibitions
  has_many :artists, through: :artist_exhibitions

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
