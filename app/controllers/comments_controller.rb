class CommentsController < ApplicationController

  def new
    @workout = Workout.find_by_id(params[:workout_id])
    @comment = @workout.comments.build
  end
 
  def create
    @comment = current_user.comments.build(comment_params)
    if @comment.save
      redirect_to workout_path(@comment.workout_id)
    else
      render 'new'
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:workout_id, :content)
  end

end
