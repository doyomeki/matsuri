class DropTableUsersRoles < ActiveRecord::Migration
  def up
    drop_table :users_roles
  end

  def down
  end
end
