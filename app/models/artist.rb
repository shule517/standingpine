class Artist < ApplicationRecord
  has_many :artworks, dependent: :destroy
  has_many :connections
  has_many :exhibitions, through: :connections

  validates :name_ja, presence: true, unless: :name_present?
  validates :name_en, presence: true, unless: :name_present?
  validates :description_ja, presence: true, unless: :description_present?
  validates :description_en, presence: true, unless: :description_present?
  validates :biography_ja, presence: true, unless: :biography_present?
  validates :biography_en, presence: true, unless: :biography_present?
  validates :cover_image, presence: true

  has_attached_file :cover_image, styles: {
    thumbnail: "100x100#"
  }

  validates_attachment :cover_image, content_type: {
    content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"],
  }, size: { in: 0..5.megabytes }
end
