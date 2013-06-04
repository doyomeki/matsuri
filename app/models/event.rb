class Event < ActiveRecord::Base
  attr_accessible :capacity, :description, :end_datetime, :place, :start_datetime, :title, :upcoming, :keyword

  #TODO: :schedulesを削除
  has_many :schedules
  has_many :contents

  def self.top_data
    events = self.where(upcoming: true)
    events.count == 1 ? events : events.first
  end

  def time_schedules
    Schedule.where(event_id: self.id)
  end
end
