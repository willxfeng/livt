class Exercise < ActiveRecord::Base
  validates :name, presence: true
  validates :type,
    inclusion: { in: ['Free Weight', 'Cable Machine', 'Calisthenics'] }
  validates :difficulty,
    inclusion: { in: %w(Beginner Intermediate Advanced) }
end
