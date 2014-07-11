class ItemsController < ApplicationController
  before_action :is_authenticated?
  # respond_to :json

  def index

    #@name = Item.find_by(params[:id])

    @items = Item.all
    @item = Item.find_by(params[:id])
    @collections = current_user.collections

    respond_to do |format|
      format.html { } # index.html.erb
      format.json { render json: @items }
    # @items = if params[:ids]
    #   puts ">>>>>>>>>>>>> params[:ids] #{params[:ids]}" #raw string
    #   puts ">>>>>>>>>>>>> split, #{params[:ids].split(",")}" #split string
      #Item.where(:id.in => params[:ids].split(",")) #"in" is for Mongo
      
    # else
    #   Item.all.entries
    end
  end

  def show
      redirect_to '/items'
  end


  def new
    @item = Item.new
    @collections = current_user.collections

  end


  def create
    @item = Item.new( item_params )

    respond_to do |format|
      if @item.save
        format.html { redirect_to '/items', notice: 'Item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @item }
      else
        format.html { render action: 'new' }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @item = Item.find_by(params[:id])
  end

  def update
  end

  def destroy
    # @item.destroy
    # respond_to do |format|
    #   format.html { redirect_to items_url }
    #   format.json { render json: Item.all }

    #@item = Item.destroy
    @item = Item.find(params[:id])
    @item.destroy
    #end
  end

  private

  def item_params
    params.require(:item).permit(:collection_id, :color, :clothing_type, :picture)
  end

end


