class RenameUserProfilePhotoToAvatar < ActiveRecord::Migration
  def change
    rename_column :users, :profile_photo, :avatar
  end
end
