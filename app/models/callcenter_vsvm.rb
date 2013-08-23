class CallcenterVsvm < ActiveRecord::Base
  belongs_to :callcenter
  attr_accessible :dn
  validates :dn,   :uniqueness => {:scope => [:callcenter_id]},
                   :presence => true, 
                   :format => {:with => /^\d{4}$|^\d{3}-\d{3}-\d{4}$/}
end
