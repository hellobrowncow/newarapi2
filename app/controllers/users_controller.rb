class UsersController < ApplicationController
  respond_to :json
      layout 'splash'

  def index

    respond_to do |format|
      format.html { } # index.html.erb
      format.json { render json: User.all }
    end
  end

  def show
  end

  def new
    @user = User.new
  end


  def create
    @user = User.new( user_params )
    @user.save

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user = User.all
    @user.destroy
  end

  def user_params
    params.require(:user).permit(:name, :last_name, :email, :password, :password_confirmation)
  end

end
