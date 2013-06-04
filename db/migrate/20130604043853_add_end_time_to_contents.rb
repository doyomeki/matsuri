class AddEndTimeToContents < ActiveRecord::Migration
  def change
    add_column :contents, :end_time, :timestamp
  end
end
