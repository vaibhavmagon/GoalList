class Profile < ActiveRecord::Base
  attr_accessible :Born_on, :Gender, :Location, :About, :user_id, :photo
  belongs_to :user
  
  has_attached_file :photo
  
  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 10.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
end
