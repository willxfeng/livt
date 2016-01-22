class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.belongs_to :muscle
      t.belongs_to :exercise
    end
  end
end
