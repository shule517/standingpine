class RenameLinkColumnToArtists < ActiveRecord::Migration[5.1]
  def change
    rename_column :artists, :link, :web_site
  end
end
