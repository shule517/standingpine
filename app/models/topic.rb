class Topic < ApplicationRecord
  with_options unless: :title_present? do |title|
    title.validates :title_ja, presence: true
    title.validates :title_en, presence: true
  end

  has_attached_file :cover_image, styles: { medium: "300x300>" }
  validates_attachment :cover_image, content_type: {
    content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  }
end
