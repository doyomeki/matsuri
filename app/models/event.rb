class Event < ActiveRecord::Base
  attr_accessible :capacity, :description, :end_datetime, :place, :start_datetime, :title

  scope :top_data, where(:flag => true)
  scope :limit_1, limit(1)

  def self.top_data
    events = self.where(flag: true)
    events.count == 1 ? events : events.first
  end
end
