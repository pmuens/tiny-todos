class Todo < ActiveRecord::Base  
  attr_accessible :content, :title
  
  has_many :comments, :dependent => :destroy
  
  validates :title, :presence => true
  validates :content, :presence => true
end
