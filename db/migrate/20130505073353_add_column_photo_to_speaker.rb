class AddColumnPhotoToSpeaker < ActiveRecord::Migration
  def change
    add_column :speakers, :photo, :binary
    add_column :speakers, :photo_type, :string
  end

end
