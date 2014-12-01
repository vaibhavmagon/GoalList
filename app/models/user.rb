class User < ActiveRecord::Base
  attr_accessible :id, :name, :email, :password, :password_confirmation, :photo, :bio, :provider, :uid
  has_many :posts
  has_one :profile
  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user
  has_attached_file :photo
  
  validates_attachment_size :photo, :less_than => 10.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
  
  attr_accessor :password
  before_save :encrypt_password
  
  validates_format_of :name, :with => /[A-Za-z]+/, :on => :create
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  validates_length_of :password, :minimum => 4, :on => :create
  
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email 
  validates_uniqueness_of :email
  
  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end
  
   def self.search(search)
        if search
            find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
        else
            find(:all)
        end
    end

  
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
end
