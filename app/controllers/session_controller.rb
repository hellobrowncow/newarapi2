class SessionController < ApplicationController
  before_action :is_authenticated?, only: [ :destroy ]
  layout 'splash'

  def new
    redirect_to root_url if current_user
  end

  def create
    if user = User.authenticate(params[:user][:email], params[:user][:password])
      session[:user_id] = user.id
      redirect_to user_path(user.id)
      # redirect_to root_url

    else
      flash.now[:error] = "Unable to sign you in. Please try again."
      render :new
    end
  end

  def destroy
    # log_user_out
    session[:user_id] = nil
    redirect_to logout_url, notice: "You've logged out."
  end
end