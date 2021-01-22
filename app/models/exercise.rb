class Exercise < ApplicationRecord
  has_many :exercises_workouts
  has_many :workouts, through: :exercises_workouts

  validates :name, uniqueness: true, presence: true

  scope :by_difficulty, -> (difficulty) { where(difficulty: difficulty) }

  
  def sets_and_reps(workout)
    exercise = ExercisesWorkout.find_by(workout_id: workout.id, exercise_id: self.id)
    if exercise.sets > 1
      "#{exercise.sets} sets of #{exercise.reps} reps."
    else
      "#{exercise.sets} set of #{exercise.reps} reps."
    end
  end
 
end
