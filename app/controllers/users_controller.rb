class UsersController < ApplicationController
  respond_to :json

  def index
    render json: User.all
  end

  def new
    user = User.new
  end


  def create
    user = User.new

    user.save
  end

  def destroy
    user = User.all
    user.destroy
  end
end
