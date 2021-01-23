class ExercisesWorkout < ApplicationRecord
  belongs_to :exercise #adds presence validation for exercise
  belongs_to :workout

  validates :sets, :reps, presence: true, numericality: { only_integer: true, greater_than: 0 }

end
