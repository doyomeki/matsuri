class RenamePhotoToSpeakers < ActiveRecord::Migration
  def up
    rename_column :speakers, :photo, :photo_name
    rename_column :speakers, :photo_type, :photo_uid
  end
end
