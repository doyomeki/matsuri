class Content < ActiveRecord::Base
  attr_accessible :capacity, :description, :room_name, :schedule_id, :speaker_id, :title

  belongs_to :schedule, foreign_key: "schedule_id"

  def room_name
    Room.find(self.id).name
  end

  def room_capacity
    Room.find(self.id).capacity
  end
end
