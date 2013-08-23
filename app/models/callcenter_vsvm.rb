class CallcenterVsvm < ActiveRecord::Base
  belongs_to :callcenter
  attr_accessible :dn
  validates :dn,   :uniqueness => {:scope => [:callcenter_id]},
                   :presence => true
end
