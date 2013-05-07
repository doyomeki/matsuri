class RemoveColumnContents < ActiveRecord::Migration
  def up
    remove_column :contents, :capacity, :room_name
  end

  def down
    add_column :contents, :capacity, :integer
    add_column :contents, :room_name, :string
  end
end
