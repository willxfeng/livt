class CreatePersonalRecords < ActiveRecord::Migration
  def change
    create_table :personal_records do |t|
      t.belongs_to :user
      t.belongs_to :exercise
      t.decimal :weight, null: false
      t.integer :reps, null: false
    end
  end
end
