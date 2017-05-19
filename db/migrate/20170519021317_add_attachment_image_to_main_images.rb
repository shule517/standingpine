class AddAttachmentImageToMainImages < ActiveRecord::Migration[5.1]
  def self.up
    change_table :main_images do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :main_images, :image
  end
end
