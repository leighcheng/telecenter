class CallcenterMsg < ActiveRecord::Base
  belongs_to :callcenter
  belongs_to :msg
end
