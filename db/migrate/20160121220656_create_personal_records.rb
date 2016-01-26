class CreatePersonalRecords < ActiveRecord::Migration
  def change
    create_table :personal_records do |t|
      t.belongs_to :user
      t.belongs_to :exercise
      t.decimal :weight, null: false, default: 0
      t.integer :reps, null: false, default: 1
    end
  end
end
