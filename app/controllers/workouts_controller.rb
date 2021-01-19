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
    
  end

end
