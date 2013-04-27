class Schedule < ActiveRecord::Base
  attr_accessible :end_time, :event_id, :start_time
end
