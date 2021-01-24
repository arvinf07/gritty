class WorkoutsController < ApplicationController

  def index
    if params[:user_id] && @user = User.find_by_id(params[:user_id])
      @workouts = @user.workouts
      render 'user_workouts'
    else
      @workouts = Workout.all
    end
  end

  def new 
    @workout = Workout.new
    10.times {@workout.exercises_workouts.build}
  end

  def create
    @workout = current_user.workouts.build(workout_params)
    if @workout.save
      redirect_to workout_path(@workout)
    else
      @errors = @workout.errors.full_messages
      10.times {@workout.exercises_workouts.build}
      render 'new'
    end
  end

  def show
    @workout = Workout.find_by_id(params[:id])
    @user = User.find_by_id(@workout.user_id)
    redirect_to workouts_path, alert: "That workout does not exist" if @workout.nil?
  end 

  def edit
    @workout = Workout.find_by_id(params[:id])
    5.times {@workout.exercises_workouts.build}
  end

  def update
    @workout = Workout.find_by_id(params[:id]) 
    if @workout.update(workout_params)
      redirect_to workout_path(@workout)
    else
      @errors = @workout.errors.full_messages  
      render 'edit'                               
    end
  end

  def destroy
    Workout.find_by_id(params[:id]).destroy
    redirect_to user_workouts_path(current_user)
  end

  private
  def workout_params
    params.require(:workout).permit(:name, exercises_workouts_attributes: [:id, :exercise_id, :sets, :reps])
  end

end
