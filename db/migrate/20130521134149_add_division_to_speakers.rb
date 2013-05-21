class AddDivisionToSpeakers < ActiveRecord::Migration
  def change
    add_column :speakers, :division, :string
  end
end
