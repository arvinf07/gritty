class ErrorsController < ActionController::Base
  protect_from_forgery with: :null_session

  def error_404
    render 'errors/not_found'
  end
  
end