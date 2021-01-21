class WorkoutsController < ApplicationController

  def index
    @workouts = Workout.all
  end

  def new 
    @workout = Workout.new
    10.times {@workout.exercises_workouts.build}
    ## modify model to accept exercises nested resources 
    ## and make sure duplicates cant be created 
  end

  def create
    @workout = current_user.workouts.build(workout_params)
    if @user.save
      redirect_to workout_path(@user.workouts.last)
    else
      @errors = workout.errors.full_messages
      render 'new'
    end
  end

  def show
    @workout = Workout.find_by_id(params[:id])
    @creator = User.find_by_id(@workout.user_id)
    redirect_to workouts_path, alert: "That workout does not exist" if @workout.nil?
  end 

  private
  def workout_params
    params.require(:workout).permit(:name, exercises_workouts_attributes: [:exercise_id, :sets, :reps])
  end

end
