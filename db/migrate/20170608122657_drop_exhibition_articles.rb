class DropExhibitionArticles < ActiveRecord::Migration[5.1]
  def change
    drop_table :exhibition_articles
  end
end
