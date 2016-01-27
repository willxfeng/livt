class RemoveExerciseDifficulty < ActiveRecord::Migration
  def change
    remove_column :exercises, :difficulty, :string
  end
end
