class Status < ActiveRecord::Base
  belongs_to :user

  validates :date, presence: true
  validates :weight, presence: true, numericality: {
    greater_than_or_equal_to: 0
  }
end
