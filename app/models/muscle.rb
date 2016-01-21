class Muscle < ActiveRecord::Base
  belongs_to :muscle_group

  validates :name, presence: true, uniqueness: true
end
