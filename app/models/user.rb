class User < ActiveRecord::Base
  has_many :muscles
  has_many :muscle_groups, through: :muscles

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: true

  mount_uploader :avatar, AvatarUploader

  def full_name
    "#{first_name} #{last_name}"
  end
end
