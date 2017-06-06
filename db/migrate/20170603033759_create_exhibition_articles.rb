class CreateExhibitionArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :exhibition_articles do |t|
      t.integer :exhibition_id
      t.integer :article_id

      t.timestamps
    end
  end
end
