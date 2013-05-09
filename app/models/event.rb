class Event < ActiveRecord::Base
  attr_accessible :capacity, :description, :end_datetime, :place, :start_datetime, :title

  def self.recent
    recent_time = self.minimum("start_datetime", :conditions => ["start_datetime > ?", Time.now])
    self.find_by_start_datetime(recent_time)
  end
end
