class WorkoutsController < ApplicationController

  def index
    if params[:user_id] && @user = User.find_by_id(params[:user_id])
      @workouts = @user.workouts
    else 
      @workouts = Workouts.all
      ##Can I use flash when rendering
      flash[:alert] = "The user you entered does not exist" if params[:user_id] 
    end
  end

  def new 
    byebug
    @user = User.find(params[:user_id])
    @workout = Workout.new
    10.times {@workout.exercise_workouts.build}
    ## modify model to accept exercises nested resources 
    ## and make sure duplicates cant be created 
  end

  def create
    byebug
  end

  private
  def workout_params
    params.require(:workout).permit(:name, exercise_workouts_attributes: [:exercise_id, :sets, :reps])
  end

end
