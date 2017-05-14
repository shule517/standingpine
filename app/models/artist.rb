class Artist < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :biography, presence: true
  validates :cover_image, presence: true

  has_attached_file :cover_image, styles: { medium: "300x300>" }
  validates_attachment :cover_image, content_type: {
    content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  }
end
