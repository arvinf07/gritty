class ExercisesController < ApplicationController

  def show 
    if @exercise = Exercise.find_by_id(params[:id])
      render 'show'
    else
      redirect_to exercises_path, alert: "That exercise is does not exitst"
    end
  end

  def index  
    filter_exercises
  end
  
  
  private
  def filter_exercises
    if params[:difficulty].blank? && params[:equipment].blank?
      @exercises = Exercise.all

    elsif params[:difficulty].blank? && params[:equipment]
      @exercises = Exercise.by_equipment(params[:equipment])

    elsif params[:difficulty] && params[:equipment].blank?
      @exercises = Exercise.by_difficulty(params[:difficulty])

    else
      @exercises = Exercise.by_difficulty(params[:difficulty]).by_equipment(params[:equipment])
    end
  end

end
