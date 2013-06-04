class AddEventIdToContents < ActiveRecord::Migration
  def change
    add_column :contents, :event_id, :integer
  end
end
