class Exercise < ActiveRecord::Base
  has_many :personal_records
  has_many :users, through: :personal_records

  has_many :targets
  has_many :muscles, through: :targets

  has_many :gym_sets
  has_many :workouts, through: :gym_sets

  validates :name, presence: true
  validates :ex_type,
    inclusion: { in: ['', 'Barbell', 'Dumbbell', 'Cable Machine',
      'Lever Machine', 'Calisthenics'] }
end
