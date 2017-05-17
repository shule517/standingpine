class CreateExhibitions < ActiveRecord::Migration[5.1]
  def change
    create_table :exhibitions do |t|
      t.string :title
      t.string :sub_title
      t.string :addition
      t.datetime :starting_on
      t.datetime :ending_on
      t.text :description

      t.timestamps
    end
  end
end
