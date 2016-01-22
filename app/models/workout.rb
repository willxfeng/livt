class Workout < ActiveRecord::Base
  has_many :gym_sets
  has_many :exercises, through: :gym_sets

  validates :date, presence: true
end
