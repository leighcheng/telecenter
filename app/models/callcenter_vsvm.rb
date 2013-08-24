class CallcenterVsvm < ActiveRecord::Base
  attr_accessible :callcenter_id, :vsvm_id
  belongs_to :callcenter
  belongs_to :vsvm
  validates_uniqueness_of :vsvm_id, scope: :callcenter_id 
end
