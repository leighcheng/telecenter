class Outsidenumber < ActiveRecord::Base
  belongs_to :callcenter
  attr_accessible :dn
  validates :dn, :uniqueness => true
  validates :dn, :presence => true
end
