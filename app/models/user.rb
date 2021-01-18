class User < ApplicationRecord
  has_many :workouts

  has_secure_password
  validates_confirmation_of :password
  validates :name, :password, :email, presence: true
  validates :name, :email, uniqueness: true

end
