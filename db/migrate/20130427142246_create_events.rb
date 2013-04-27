class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.integer :capacity
      t.string :place
      t.datetime :start_datetime
      t.datetime :end_datetime

      t.timestamps
    end
  end
end
