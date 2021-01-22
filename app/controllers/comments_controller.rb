class CommentsController < ApplicationController

  def new
    @workout = Workout.find_by_id(params[:workout_id])
    @comment = @workout.comments.build
  end
 
  def create
    byebug
  end

end
