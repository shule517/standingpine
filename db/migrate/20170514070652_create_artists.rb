class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.text :description
      t.text :biography
      t.boolean :regular
      t.string :link

      t.timestamps
    end
  end
end
