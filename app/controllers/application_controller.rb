class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    @current_user ||= Band.find(session[:band_id]) if session[:band_id]
  end

  def index
    @home_page = true
  end  

end
