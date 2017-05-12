class AddAttachmentCoverImageToTopics < ActiveRecord::Migration
  def self.up
    change_table :topics do |t|
      t.attachment :cover_image
    end
  end

  def self.down
    remove_attachment :topics, :cover_image
  end
end
