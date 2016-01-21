class RenameMuscleGroupsImgUrl < ActiveRecord::Migration
  def change
    rename_column :muscle_groups, :img_url, :image_url
  end
end
