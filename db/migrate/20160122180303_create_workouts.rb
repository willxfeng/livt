class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.date :date, null: false
      t.string :name
      t.text :notes
    end
  end
end
