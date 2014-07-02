class ItemsController < ApplicationController
  respond_to :json

  def index
    render json: Item.all
  end

end


