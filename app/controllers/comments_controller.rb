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
      @errors = @comment.errors.full_messages
      @workout = @comment.workout
      render 'new'
    end
  end

  def edit
    current_comment
  end

  def update
    current_comment
    if @comment.update(comment_params)
      redirect_to workout_path(@comment.workout_id)
    else
      @errors = @comment.errors.full_messages
      render 'edit'
    end

  end

  def destroy
    workout = current_comment.workout
    @comment.destroy
    redirect_to workout_path(workout)
  end

  private
  def comment_params
    params.require(:comment).permit(:workout_id, :content)
  end

  def current_comment
    @comment ||= Comment.find_by_id(params[:id])
  end

end
