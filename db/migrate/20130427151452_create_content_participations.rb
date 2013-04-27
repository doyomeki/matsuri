class CreateContentParticipations < ActiveRecord::Migration
  def change
    create_table :content_participations do |t|
      t.string :content_id
      t.string :event_participation_id

      t.timestamps
    end
  end
end
