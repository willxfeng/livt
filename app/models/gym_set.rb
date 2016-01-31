class GymSet < ActiveRecord::Base
  belongs_to :exercise
  belongs_to :workout

  validates :weight, presence: true, numericality: {
    greater_than_or_equal_to: 0
  }
  validates :reps, presence: true, numericality: {
    only_integer: true,
    greater_than: 0
  }
  validates :set_type, presence: true, inclusion: { in: ['Warmup', 'Working Set'] }
end
