class Artist < ApplicationRecord
  has_many :articles, dependent: :destroy

  validates :name_ja, presence: true, unless: :name_present?
  validates :name_en, presence: true, unless: :name_present?
  validates :description_ja, presence: true, unless: :description_present?
  validates :description_en, presence: true, unless: :description_present?
  validates :biography_ja, presence: true, unless: :biography_present?
  validates :biography_en, presence: true, unless: :biography_present?
  validates :cover_image, presence: true

  has_attached_file :cover_image, styles: { medium: "300x300>" }
  validates_attachment :cover_image, content_type: {
    content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  }
end
