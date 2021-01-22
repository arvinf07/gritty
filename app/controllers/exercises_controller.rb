class ExercisesController < ApplicationController

  def show 
    if @exercise = Exercise.find_by_id(params[:id])
      render 'show'
    else
      redirect_to exercises_path, alert: "That exercise is does not exitst"
    end
  end

  def index  
    if params[:difficulty]
      @exercises = Exercise.by_difficulty(params[:difficulty])
    else
      @exercises = Exercise.all
    end
  end


end
