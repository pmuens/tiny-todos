class Todo < ActiveRecord::Base
  http_basic_authenticate_with :name => "name", :password => "password", :only => :show
  
  attr_accessible :content, :title
  
  has_many :comments, :dependent => :destroy
  
  validates :title, :presence => true
  validates :content, :presence => true
end
