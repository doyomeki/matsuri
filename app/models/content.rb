class Content < ActiveRecord::Base
  attr_accessible :capacity, :description, :room_name, :schedule_id, :speaker_id, :title

  belongs_to :schedule, foreign_key: "schedule_id"

  def room_name
    Room.where(id: self.room_id).first.name
  end

  def room_capacity
    Room.where(id: self.room_id).first.capacity
  end

  def speaker_name
    Speaker.where(id: self.speaker_id).first.name
  end

  def speaker_description
    Speaker.where(id: self.speaker_id).first.description
  end

  def attendee
    @users = []
    content_participations = ContentParticipation.where(content_id: self.id)
    content_participations.each do |participation|
      @users << User.find(EventParticipation.find(participation.event_participation_id).user_id)
    end
    @users
  end
end
