class AddStartTimeToContents < ActiveRecord::Migration
  def change
    add_column :contents, :start_time, :timestamp
  end
end
