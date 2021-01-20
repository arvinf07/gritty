class Workout < ApplicationRecord
  has_many :exercise_workouts
  has_many :exercises, through: :exercise_workouts

  accepts_nested_attributes_for :exercises_workouts
  

end
