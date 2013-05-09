class AddFlagToEvents < ActiveRecord::Migration
  def change
    add_column :events, :flag, :boolean
  end
end
