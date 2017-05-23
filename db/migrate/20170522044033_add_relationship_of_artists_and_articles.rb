class AddRelationshipOfArtistsAndArticles < ActiveRecord::Migration[5.1]
  def change
    add_reference :articles, :artist, index: true, foreign_key: true
  end
end
