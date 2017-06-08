class Article < ApplicationRecord
  belongs_to :artist
  belongs_to :connection, optional: true

  validates :title_ja, presence: true, unless: :title_present?
  validates :title_en, presence: true, unless: :title_present?
  validates :image, presence: true

  validate :artist_participate_check

  has_attached_file :image, styles: {
    medium: "300x300>",
    thumbnail: "100x100#"
  }

  validates_attachment :image, content_type: {
    content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"],
  }, size: { in: 0..5.megabytes }

  private

    def artist_participate_check
      if self.connection_id.present?
        @connection_artist = Connection.find(connection_id).artist_id
        @article_artist = self.artist_id
        if @connection_artist != @article_artist
          errors[:base] << "おやおや、出展作家と作品が違いませんか？"
        end
      end
    end
end
