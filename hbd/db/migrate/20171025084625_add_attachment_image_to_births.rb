class AddAttachmentImageToBirths < ActiveRecord::Migration[5.1]
  def self.up
    change_table :births do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :births, :image
  end
end
