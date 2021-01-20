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
    @workout = Workout.new
    10.times {@workout.exercises_workouts.build}
    ## modify model to accept exercises nested resources 
    ## and make sure duplicates cant be created 
  end

  def create
    current_user.workouts.build(workout_params)
    if @user.save
      redirect_to workout_path(@user.workouts.last)
    else
      #render page with errors
      #set value to errors and workout instance vars
      render 'new'
    end
  end

  def show
    @workout = Workout.find_by_id(params[:id])
    redirect_to workouts_path, alert: "That workout does not exist" if @workout.nil?
  end 

  private
  def workout_params
    params.require(:workout).permit(:name, exercises_workouts_attributes: [:exercise_id, :sets, :reps])
  end

end
