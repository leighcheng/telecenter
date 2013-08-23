class Vsvm < ActiveRecord::Base
  attr_accessible :dn, :name
  has_many :callcenter_vsvms
  has_many :callcenters, :through => :callcenter_vsvms  
  validates :dn, :presence => true
  validates :name, :presence => true
end
