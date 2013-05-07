class AddColumnContents < ActiveRecord::Migration
  def up
    add_column :contents, :room_id, :integer
  end

  def down
    remove_column :contents, :room_id
  end
end
