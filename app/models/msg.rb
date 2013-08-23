class Msg < ActiveRecord::Base
  attr_accessible :code, :txt    
  has_many :callcenter_msgs
  has_many :callcenters, :through => :callcenter_msgs  
  validates :code, :presence => true
  validates :txt, :presence => true
end
