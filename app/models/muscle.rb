class Muscle < ActiveRecord::Base
  belongs_to :muscle_group
  belongs_to :user

  validates :name, presence: true, uniqueness: true
end
