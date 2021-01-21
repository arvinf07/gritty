class UsersController < ApplicationController
  skip_before_action :redirect_if_not_logged_in

  def edit
    current_user
    ##Edit the partial so that only some fields appear on edit form.
  end

  def update

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      @errors = @user.errors.full_messages
      render 'new'
    end  
  end

  def show
    current_user
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :height, :weight)
  end


end
