class ChangeColumnTypeFromEventParticipations < ActiveRecord::Migration
  def up
    rename_column :content_participations, :content_id, :content_id_string
    add_column :content_participations, :content_id, :integer

    ContentParticipation.reset_column_information
    ContentParticipation.find_each { |c| c.update_attribute(:content_id, c.content_id_string) } 
    remove_column :content_participations, :content_id_string

    rename_column :content_participations, :event_participation_id, :event_participation_id_string
    add_column :content_participations, :event_participation_id, :integer

    ContentParticipation.reset_column_information
    ContentParticipation.find_each { |c| c.update_attribute(:event_participation_id, c.event_participation_id_string) } 
    remove_column :content_participations, :event_participation_id_string
  end

  def down
    change_column :content_participations, :content_id, :string
    change_column :content_participations, :event_participation_id, :string
  end
end
