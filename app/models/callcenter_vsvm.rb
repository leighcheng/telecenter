class CallcenterVsvm < ActiveRecord::Base
  attr_accessible :callcenter_id, :vsvm_id
  belongs_to :callcenter
  belongs_to :vsvm
end
