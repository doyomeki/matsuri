class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.integer :schedule_id
      t.string :title
      t.text :description
      t.integer :capacity
      t.integer :speaker_id
      t.string :room_name

      t.timestamps
    end
  end
end
