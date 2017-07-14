class Exhibition < ApplicationRecord
  has_many :connections
  has_many :artists, through: :connections

  validates :title_ja, presence: true, unless: :title_present?
  validates :title_en, presence: true, unless: :title_present?
  validates :description_ja, presence: true, unless: :description_present?
  validates :description_en, presence: true, unless: :description_present?
  validates :cover_image, presence: true

  scope :started, -> { order('starting_on DESC') }
  scope :started_year, -> { order('starting_on DESC').select('starting_on').map{ |i| i.starting_on.year }.uniq
 }

  def self.by_year(year)
    @year = year.to_i
    self.where(starting_on: Date.new(@year).all_year)
  end

  has_attached_file :cover_image, styles: {
    thumbnail: "100x100#"
  }

  validates_attachment :cover_image, content_type: {
    content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"],
  }, size: { in: 0..5.megabytes }
end
