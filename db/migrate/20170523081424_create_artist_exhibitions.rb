class CreateArtistExhibitions < ActiveRecord::Migration[5.1]
  def change
    create_table :artist_exhibitions do |t|
      t.integer :artist_id
      t.integer :exhibition_id

      t.timestamps
    end
  end
end
