class CallcenterMsg < ActiveRecord::Base
  attr_accessible :callcenter_id, :msg_id 
  belongs_to :callcenter
  belongs_to :msg
  validates_uniqueness_of :msg_id, scope: :callcenter_id
end
