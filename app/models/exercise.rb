class Exercise < ActiveRecord::Base
  has_many :personal_records
  has_many :users, through: :personal_records

  has_many :targets
  has_many :muscles, through: :targets

  validates :name, presence: true
  validates :type,
    inclusion: { in: ['Free Weight', 'Cable Machine', 'Calisthenics'] }
  validates :difficulty,
    inclusion: { in: %w(Beginner Intermediate Advanced) }
end
