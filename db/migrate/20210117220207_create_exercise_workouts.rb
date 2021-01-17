class CreateExerciseWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :exercise_workouts do |t|
      t.integer :exercise_id
      t.integer :workout_id
      t.integer :sets
      t.integer :reps

      t.timestamps
    end
  end
end
