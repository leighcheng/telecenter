class Vsvm < ActiveRecord::Base
  attr_accessible :dn, :name
  has_many :callcenters  
  validates :dn, :presence => true
  validates :name, :presence => true
end
