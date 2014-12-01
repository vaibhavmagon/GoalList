class AddAttachmentMphotoToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.has_attached_file :mphoto
    end
  end

  def self.down
    drop_attached_file :posts, :mphoto
  end
end
