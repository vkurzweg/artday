class AddAttachmentPhotoToExhibitions < ActiveRecord::Migration
  def self.up
    change_table :exhibitions do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :exhibitions, :photo
  end
end
