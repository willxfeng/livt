class CreateMuscles < ActiveRecord::Migration
  def change
    create_table :muscles do |t|
      t.belongs_to :muscle_group, null: false
      t.belongs_to :user, null: false

      t.string :name, null: false, unique: true
      t.text :description
      t.string :image_url
      t.string :source
    end
  end
end
