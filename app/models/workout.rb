class Workout < ActiveRecord::Base
  belongs_to :user
  has_many :gym_sets
  has_many :exercises, through: :gym_sets

  validates :date, presence: true
end
