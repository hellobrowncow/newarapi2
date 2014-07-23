class ItemsController < ApplicationController
  before_action :is_authenticated?
  # respond_to :json

  def index

    @collections = current_user.collections
    @items = Item.all
    # @items = Item.where(collection_id: @collections.map {|c| c.id })
    @item = @items.find_by(params[:id])
    @user = User.find_by(params[:id])

    respond_to do |format|
      format.html { } 
      format.json { render json: @items }
    end
  end

  def show
    @item = Item.find_by(id: params[:id])

    # @items = current_user.items.find_by(id: params[:id])

  end

  def new
    @collections = current_user.collections
    @item = Item.new
    @item.tags.build
  end

  def create
    @item = Item.new( item_params )

    respond_to do |format|
      if @item.save
        format.html { redirect_to 'items_path', notice: 'Item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @item }
      else
        format.html { render action: 'new' }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @collections = current_user.collections
    @item = Item.find_by(id: params[:id])
    @item.tags.build

  end

  def update
    @item = Item.find_by(id: params[:id])
    if @item.update_attributes(item_params)
      redirect_to item_path(@item)
    else 
      @collections = current_user.collections
      render action: 'edit', status: :unprocessable_entity, location: @item
    end
  end

  def destroy
    @item = Item.find_by(id: params[:id])
    @item.destroy
    redirect_to items_path
  end

  # def search
  #   q = params[:item][:color]
  #   @items = Item.find(:all, conditions: ["item LIKE %?%",q])
  # end

  private

  def item_params
    params.require(:item).permit(:collection_id, :color, :clothing_type, :favorite, :picture, tags_attributes: [:name, :id, :_destroy])
  end

end


