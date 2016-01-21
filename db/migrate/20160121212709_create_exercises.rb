class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name, null: false
      t.text :description
      t.string :gif_url
      t.string :type
      t.string :difficulty
    end
  end
end
