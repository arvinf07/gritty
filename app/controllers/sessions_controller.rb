class SessionsController < ApplicationController
  ##setting up omniauth login

  def login

  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to '/login', alert: "The password and/or email are incorrect"
    end
  end

  ##Establish the logout actions

end
