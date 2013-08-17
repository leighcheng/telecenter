class Cdn < ActiveRecord::Base
  belongs_to :callcenter
  attr_accessible :extension
  validates :extension,  :uniqueness => true, 
                         :presence => true, 
                         :format => {:with => /^\d{4}$/}
end
