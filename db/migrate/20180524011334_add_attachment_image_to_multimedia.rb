class AddAttachmentImageToMultimedia < ActiveRecord::Migration[5.1]
  def self.up
    change_table :multimedia do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :multimedia, :image
  end
end
