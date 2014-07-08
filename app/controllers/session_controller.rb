class SessionController < ApplicationController
  before_action :is_authenticated?, only: [ :destroy ]

  def new
    redirect_to root_url if current_user
  end

  def create
    if user = User.authenticate(params[:user][:email], params[:user][:password])
      session[:user_id] = user.id
      redirect_to root_url
    else
      flash.now[:error] = "Unable to sign you in. Please try again."
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url, notice: "You've logged out."
  end
end