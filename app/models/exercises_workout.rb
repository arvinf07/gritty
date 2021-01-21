class ExercisesWorkout < ApplicationRecord
  belongs_to :exercise #adds presence validation for exercise
  belongs_to :workout

  validates :sets, :reps, presence: true

end
