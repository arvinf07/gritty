class ExercisesController < ApplicationController
  
  #Should users be able to create exercises

  def show 
    if @exercise = Exercise.find_by_id(params[:id])
      render 'show'
    else
      redirect_to exercises_path, alert: "That exercise is does not exitst"
    end
  end

end
