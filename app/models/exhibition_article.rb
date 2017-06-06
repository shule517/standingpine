class ExhibitionArticle < ApplicationRecord
  belongs_to :exhibition
  belongs_to :article

  validate :artist_participate

  private

  def artist_participate
    @artist_id = Article.find(article_id).artist_id
    @artist = Artist.find(@artist_id)
    unless @artist.exhibitions.include?(exhibition_id)
      errors.add(:exhibition_id, "Artists will not participate in the exhibition. Please check the artist.")
    end
  end
end
