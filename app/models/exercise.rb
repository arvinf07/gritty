class Exercise < ApplicationRecord
  has_many :exercises_workouts
  has_many :workouts, through: :exercises_workouts

  validates :name, uniqueness: true, presence: true
end
