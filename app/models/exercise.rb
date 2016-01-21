class Exercise
  validates :name, presence: true
  validates :type, inclusion: { in: ['Free Weight', 'Cable Machine', 'Calisthenic']] }
end
