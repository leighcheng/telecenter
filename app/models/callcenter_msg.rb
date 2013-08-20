class CallcenterMsg < ActiveRecord::Base
  belongs_to :callcenter
  attr_accessible :msg_code  
end
