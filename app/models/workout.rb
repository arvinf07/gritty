class Workout < ApplicationRecord
  has_many :exercises_workouts
  has_many :exercises, through: :exercises_workouts

  accepts_nested_attributes_for :exercises_workouts, reject_if: proc { |attributes| attributes['sets'].blank? || attributes['reps'].blank? } 
 

end
