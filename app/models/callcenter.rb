class Callcenter < ActiveRecord::Base
  attr_accessible :name, :networked, :priority
  validates :name, :presence => true
  validates :name, :uniqueness => true
  has_many :outsidenumbers
end
