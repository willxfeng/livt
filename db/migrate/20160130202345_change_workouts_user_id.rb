class ChangeWorkoutsUserId < ActiveRecord::Migration
  def up
    change_column :workouts, :user_id, :integer, null: false
  end

  def down
    change_column :workouts, :user_id, :integer
  end
end
