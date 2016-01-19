class Muscle < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :parent, presence: true
  validates :image_url, presence: true
end
