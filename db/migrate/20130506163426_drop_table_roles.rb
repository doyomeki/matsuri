class DropTableRoles < ActiveRecord::Migration
  def up
    drop_table:roles
  end

  def down
  end
end
