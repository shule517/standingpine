class MainImage < ApplicationRecord
  validates :title, presence: true
  validates :image, presence: true
  validates :active, inclusion: { in: [true, false] }

  has_attached_file :image, styles: { medium: "300x300>" }
  validates_attachment :image, content_type: {
    content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  }
end
