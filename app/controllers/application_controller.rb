class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user, :logged_in?

  private

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end
  alias_method :logged_in?, :current_user
end
