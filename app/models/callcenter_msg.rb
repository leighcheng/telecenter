class CallcenterMsg < ActiveRecord::Base
  belongs_to :callcenter
  attr_accessible :msg_code  
  validates :msg_code,   :uniqueness => {:scope => [:callcenter_id]},
                         :presence => true, 
                         :format => {:with => /^\d{1,3}-\d{1,2}$/}
end
