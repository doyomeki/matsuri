class Schedule < ActiveRecord::Base
  attr_accessible :end_time, :event_id, :start_time

  belongs_to :event

  default_scope order("start_time")
end
