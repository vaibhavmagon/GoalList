class Post < ActiveRecord::Base
  attr_accessible :created_at, :message, :user_id, :story, :mphoto, :moral, :completed_at
  belongs_to :user
  has_many :likes, :as => :likeable
  
  has_attached_file :mphoto
  
  validates_presence_of :message

  validates_attachment_presence :mphoto
  validates_attachment_size :mphoto, :less_than => 10.megabytes
  validates_attachment_content_type :mphoto, :content_type => ['image/jpeg', 'image/png']
  
def self.search(search)
        if search
            find(:all, :conditions => [ 'message LIKE ?', "%#{search}%"])
        else
            find(:all)
        end
    end   
    
end