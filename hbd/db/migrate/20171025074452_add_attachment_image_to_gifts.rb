class AddAttachmentImageToGifts < ActiveRecord::Migration[5.1]
  def self.up
    change_table :gifts do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :gifts, :image
  end
end
