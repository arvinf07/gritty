class ApplicationController < ActionController::Base
  before_action :redirect_if_not_logged_in
  helper_method :logged_in?, :current_user, :redirect_if_not_authorized

  unless Rails.application.config.consider_all_requests_local
    rescue_from ActionController::RoutingError, with: -> { render_404  }
  end

  def render_404
    respond_to do |format|
      format.html { render template: 'errors/not_found', status: 404 }
      format.all { render nothing: true, status: 404 }
    end
  end

  private
  def logged_in?
    !!session[:user_id]
  end

  def redirect_if_not_logged_in
    redirect_to root_path if !logged_in?
  end

  def redirect_if_logged_in
    redirect_to user_path(current_user) if !!logged_in?
  end

  def current_user
    # @user ||= User.find_by_id(session[:user_id])
    User.find_by_id(session[:user_id])
  end

  def redirect_if_not_authorized(object)
    redirect_to user_workouts_path(current_user) if current_user != object.user
  end

end
