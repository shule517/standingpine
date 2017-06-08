class RenameArtistExhibitionsToConnections < ActiveRecord::Migration[5.1]
  def change
    rename_table :artist_exhibitions, :connections
  end
end
