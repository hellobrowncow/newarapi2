class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception. (:exception)
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception 

  helper_method :current_user

  def current_user
    @current_user ||=  User.where(id: session[:user_id]).take #User.first 
 end
 
  def is_authenticated?
    redirect_to root_url, notice: "Please log in to view that page." unless current_user
 end

end
