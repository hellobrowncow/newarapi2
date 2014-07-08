class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    @current_user ||= User.where(id: session[:user_id]).take #".where" doesn't work with Postgres???
 end
 
  def is_authenticated?
   redirect_to login_url unless current_user
 end 
end
