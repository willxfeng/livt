class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name, null: false
      t.text :description
      t.string :gif
      t.string :ex_type, default: 'Barbell'
      t.string :difficulty, default: ''
      t.string :source
    end
  end
end
