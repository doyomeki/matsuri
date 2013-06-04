class ChangeColumnTypeFromEventParticipations < ActiveRecord::Migration
  def up
    change_column :content_participations, :content_id, :integer
    change_column :content_participations, :event_participation_id, :integer
  end

  def down
    change_column :content_participations, :content_id, :string
    change_column :content_participations, :event_participation_id, :string
  end
end
