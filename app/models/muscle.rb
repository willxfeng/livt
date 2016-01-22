class Muscle < ActiveRecord::Base
  belongs_to :muscle_group
  belongs_to :user

  has_many :targets
  has_many :exercises, through: :targets

  validates :name, presence: true, uniqueness: true
end
