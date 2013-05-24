class AddKeywordToEvents < ActiveRecord::Migration
  def up
    add_column :events, :keyword, :string
  end
  def down
    remove_column :events, :kewword, :string
  end
  
end
