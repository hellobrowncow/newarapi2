class SiteController < ApplicationController
  before_action :is_authenticated?


  def index
    redirect_to user_path(current_user.id) 
  end

end


