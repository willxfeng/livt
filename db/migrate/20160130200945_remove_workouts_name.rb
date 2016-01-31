class RemoveWorkoutsName < ActiveRecord::Migration
  def chnage
    remove_column :workouts, :name
  end
end
