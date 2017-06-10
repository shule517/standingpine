class RenameTopicsToArticles < ActiveRecord::Migration[5.1]
  def change
    rename_table :topics, :articles
  end
end
