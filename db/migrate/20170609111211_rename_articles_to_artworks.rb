class RenameArticlesToArtworks < ActiveRecord::Migration[5.1]
  def change
    rename_table :articles, :artworks
  end
end
