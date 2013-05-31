class ChangeUpcomingOptionsFromEvent < ActiveRecord::Migration
  def up
    change_column_default(:events, :upcoming, false)
  end

  def down
  end
end
