class AddAttachmentCoverImageToTopics < ActiveRecord::Migration[5.1]
  def self.up
    change_table :topics do |t|
      t.attachment :cover_image
    end
  end

  def self.down
    remove_attachment :topics, :cover_image
  end
end
