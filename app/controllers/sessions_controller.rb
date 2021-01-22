class SessionsController < ApplicationController
  skip_before_action :redirect_if_not_logged_in, only: [:omniauth, :new, :create]

  def omniauth
    ##move this to the model
    @user = User.find_or_create_by(provider: auth['provider'], uid: auth['uid']) do |u|
      u.name = auth['info']['name']
      u.password = SecureRandom.hex(15)
      u.email = auth['info']['email']
    end

    if @user.valid?
      session[:user_id] = @user.id
      redirect_to user_workouts_path(@user)
    else  
      redirect_to new_session_path, alert: "Something went wrong."
    end
  end

  def new
    redirect_to user_workouts_path(current_user) if logged_in?
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_workouts_path(@user)
    else
      redirect_to new_session_path, alert: "The password and/or email are incorrect"
    end
  end

  def destroy
    reset_session
    redirect_to '/'
  end

  private
  def auth
    request.env['omniauth.auth']
  end

end
