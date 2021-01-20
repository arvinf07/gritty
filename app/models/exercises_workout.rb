class ExercisesWorkout < ApplicationRecord
  belongs_to :exercise
  belongs_to :workout

  validates :sets, :reps, :workout_id, :exercise_id, presence: true
end
