class CreateMuscleGroups < ActiveRecord::Migration
  def change
    create_table :muscle_groups do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.string :parent, null: false
      t.string :image_url, null: false
      t.string :source
    end
  end
end
