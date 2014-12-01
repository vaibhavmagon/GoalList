class Like < ActiveRecord::Base
  belongs_to :likeable, :polymorphic => true
  attr_accessible :likeable_id, :likeable_type, :user_id
  
  validates_uniqueness_of :user_id, :scope => [:likable_id, :likable_type]
end
