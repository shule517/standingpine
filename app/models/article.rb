class Article < ApplicationRecord
  with_options unless: :title_present? do |title|
    title.validates :title_ja, presence: true
    title.validates :title_en, presence: true
  end

  scope :published, -> { order("published_at DESC") }
  scope :published_limit, -> { order("published_at DESC").limit(2) }
  scope :published_year, -> { order("published_at DESC").select("published_at").map { |i| i.published_at.year }.uniq }

  def self.by_year(year)
    @year = year.to_i
    self.where(published_at: Date.new(@year).all_year)
  end

  def self.sharpen(limit_number)
    @limit = limit_number + 2
    self.published.limit(@limit) - self.published_limit
  end

  def self.next(content)
    @current_content = self.published.find_index content
    self.published[@current_content + 1] == nil ? false : self.find(self.published[@current_content + 1].id)
  end

  def self.prev(content)
    @current_content = self.published.find_index content
    self.published[@current_content] == self.published[0] ? false : self.find(self.published[@current_content - 1].id)
  end

  has_attached_file :cover_image, styles: {
    thumbnail: "100x100#"
  }

  validates_attachment :cover_image, content_type: {
    content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"],
  }, size: { in: 0..5.megabytes }
end
