class WorkoutsController < ApplicationController

  def index
    if params[:user_id] && @user = User.find_by_id(params[:user_id])
      @workouts = @user.workouts
      render 'user_workouts'
    elsif params[:alphabetically]
      @workouts = Workout.alphabetically
    else
      @workouts = Workout.all
    end
  end

  def new 
    @exercises = Exercise.all
    @workout = Workout.new
    10.times {@workout.exercises_workouts.build}
  end

  def create
    # Make it so that exercises workout are no blank
    # When re-rendered with error messages
    @workout = current_user.workouts.build(workout_params)
    if @workout.save
      redirect_to workout_path(@workout)
    else
      @exercises = Exercise.all
      @errors = @workout.errors.full_messages
      10.times {@workout.exercises_workouts.build}
      render 'new'
    end
  end

  def show
    current_workout
    @user = User.find_by_id(@workout.user_id)
    redirect_to workouts_path, alert: "That workout does not exist" if @workout.nil?
  end 

  def edit
    redirect_if_not_authorized(current_workout)
    @exercises = Exercise.all
    5.times {@workout.exercises_workouts.build}
  end

  def update
    current_workout 
    if @workout.update(workout_params)
      redirect_to workout_path(@workout)
    else
      @errors = @workout.errors.full_messages  
      render 'edit'                               
    end
  end

  def destroy
    redirect_if_not_authorized(current_workout)
    @workout.destroy
    redirect_to user_workouts_path(current_user)
  end

  private
  def workout_params
    params.require(:workout).permit(:name, exercises_workouts_attributes: [:id, :exercise_id, :sets, :reps])
  end

  def current_workout
    @workout ||= Workout.find_by_id(params[:id])
  end

end
