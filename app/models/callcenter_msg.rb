class CallcenterMsg < ActiveRecord::Base
  attr_accessible :callcenter_id, :msg_id 
  belongs_to :callcenter
  belongs_to :msg
end
