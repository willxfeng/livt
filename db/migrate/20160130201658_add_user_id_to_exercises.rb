class AddUserIdToExercises < ActiveRecord::Migration
  def change
    add_column :exercises, :user_id, :integer, null: false,
      default: User.find_by(email: 'default_user@test.com')
  end
end
