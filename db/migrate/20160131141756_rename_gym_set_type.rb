class RenameGymSetType < ActiveRecord::Migration
  def change
    rename_column :gym_sets, :type, :set_type
  end
end
