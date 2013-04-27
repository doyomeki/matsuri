class Content < ActiveRecord::Base
  attr_accessible :capacity, :description, :room_name, :schedule_id, :speaker_id, :title
end
