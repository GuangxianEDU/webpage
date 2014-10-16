class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :check_auth
  def current_user
  	@current_user ||= User.find_by_id(session[:user_id])
  end

  def check_auth
    if @current_user != nil
      redirect_to root_url
    end
  end

end
