class AddAttachmentCoverImageToExhibitions < ActiveRecord::Migration[5.1]
  def self.up
    change_table :exhibitions do |t|
      t.attachment :cover_image
    end
  end

  def self.down
    remove_attachment :exhibitions, :cover_image
  end
end
