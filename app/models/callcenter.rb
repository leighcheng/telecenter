class Callcenter < ActiveRecord::Base
  attr_accessible :name, :networked, :priority
  validates :name, :presence => true
  validates :name, :uniqueness => true
  validates :priority, :inclusion => 1..6
  has_many :outsidenumbers
end
