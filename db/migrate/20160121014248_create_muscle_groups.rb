class CreateMuscleGroups < ActiveRecord::Migration
  def change
    create_table :muscle_groups do |t|
      t.string :name, null: false, unique: true
      t.text :description
      t.string :image
      t.string :source
    end
  end
end
