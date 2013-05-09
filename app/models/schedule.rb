class Schedule < ActiveRecord::Base
  attr_accessible :end_time, :event_id, :start_time

  belongs_to :event, foreign_key: "event_id"
  has_many :contents

  default_scope order("start_time")

  def content_menu
    Content.find_all_by_schedule_id(self.id)
  end
end
