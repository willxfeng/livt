class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.belongs_to :user
      t.date :date, null: false
      t.decimal :weight, null: false
      t.string :photo
    end
  end
end
