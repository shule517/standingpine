class CreateMainImages < ActiveRecord::Migration[5.1]
  def change
    create_table :main_images do |t|
      t.string :title
      t.boolean :active

      t.timestamps
    end
  end
end
