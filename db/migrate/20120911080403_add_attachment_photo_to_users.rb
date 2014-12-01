class AddAttachmentPhotoToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.has_attached_file :photo
    end
  end

  def self.down
    drop_attached_file :users, :photo
  end
end
