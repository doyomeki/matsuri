class RenameFlagToEvent < ActiveRecord::Migration
  def up
    rename_column :events, :flag, :upcoming
  end

  def down
    rename_column :events, :upcoming, :flag
  end
end
