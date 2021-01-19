class ApplicationController < ActionController::Base


  private
  def logged_in?
    !!session[:user_id]
  end

  def redirect_if_not_logged_in
    redirect_to root_path if !logged_in?
  end

  def current_user
    @user ||= User.find_by_id(session[:user_id])
  end

end
