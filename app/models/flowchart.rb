class Flowchart < ActiveRecord::Base
  belongs_to :callcenter
  attr_accessible :data, :filepath, :name
end
