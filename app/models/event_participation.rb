class EventParticipation < ActiveRecord::Base
  attr_accessible :cancelled, :event_id, :user_id
end
