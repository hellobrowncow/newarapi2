class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception. (:exception)
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception 

  helper_method :current_user

  def current_user
    @current_user ||= User.first # User.where(id: session[:user_id]).take 
 end
 
  def is_authenticated?
    redirect_to login_url unless current_user
 end

end
