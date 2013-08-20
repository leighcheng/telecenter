class Msg < ActiveRecord::Base
  attr_accessible :code, :txt    
  has_many :callcenters  
  validates :code, :presence => true
  validates :txt, :presence => true
end
