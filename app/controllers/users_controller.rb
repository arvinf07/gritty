class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    byebug
    @user = User.new(user_params)
    if @user.save
      
    else
      ##What class does errors assign and how to style it ?? 
      @errors = @user.errors.full_messages
      render 'new'
    end  
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :height, :weight)
  end

end
