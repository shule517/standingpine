class MainImage < ApplicationRecord
  validates :title, presence: true
  validates :image, presence: true
  validates :active, inclusion: { in: [true, false] }

  scope :active_image, -> { where(active: true) }
  scope :rand_pick_active_image, -> { where(active: true).where( 'id >= ?', rand(self.first.id..self.last.id) ).first }

  has_attached_file :image, styles: {
    thumbnail: "100x100#"
  }

  validates_attachment :image, content_type: {
    content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"],
  }, size: { in: 0..5.megabytes }
end
