class MuscleGroup < ActiveRecord::Base
  has_many :muscles

  validates :name, presence: true, uniqueness: true
end
