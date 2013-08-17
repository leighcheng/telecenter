class Outsidenumber < ActiveRecord::Base
  belongs_to :callcenter
  attr_accessible :dn
  validates :dn,  :uniqueness => true, 
                  :presence => true, 
                  :format => { :with => /^\d{3}-\d{3}-\d{4}$/}
end
