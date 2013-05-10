class Schedule < ActiveRecord::Base
  attr_accessible :end_time, :event_id, :start_time

  belongs_to :event, foreign_key: "event_id"
  has_many :contents

  default_scope order("start_time")

  # 各タイムテーブルに対するコンテンツ
  def content_menu
    Content.where(schedule_id: self.id)
  end
end
