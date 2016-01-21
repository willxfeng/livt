class MuscleGroup < ActiveRecord::Base
  has_many :muscles
  has_many :users, through: :muscles

  validates :name, presence: true, uniqueness: true
end
