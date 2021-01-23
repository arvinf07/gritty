class ExercisesWorkoutsController < ApplicationController

  def destroy
    @workout = ExercisesWorkout.find_by_id(params[:id]).workout
    ExercisesWorkout.find_by_id(params[:id]).destroy
    redirect_to workout_path(@workout)
  end

end
