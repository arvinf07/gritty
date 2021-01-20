class CreateExercisesWorkouts < ActiveRecord::Migration[6.1]
  def change
    drop_table :exercise_workouts
    create_table :exercises_workouts do |t|
      t.integer :exercise_id
      t.integer :workout_id
      t.integer :sets
      t.integer :reps
      t.timestamps
    end
  end
end
