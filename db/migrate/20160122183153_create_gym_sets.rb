class CreateGymSets < ActiveRecord::Migration
  def change
    create_table :gym_sets do |t|
      t.belongs_to :exercise, null: false
      t.belongs_to :workout, null: false
      t.decimal :weight, null: false
      t.integer :reps, null: false
      t.string :type, null: false, default: 'Working Set'
      t.boolean :complete, null: false, default: false
    end
  end
end
