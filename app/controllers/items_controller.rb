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
    @item = Item.find_by(id: params[:id])
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
    @item = Item.find_by(id: params[:id])
    @collections = current_user.collections

  end

  def update
      @item = Item.find_by(id: params[:id])
      if @item.update_attributes(item_params)
        redirect_to item_path(@item)
      else 
        render action: 'edit', status: :unprocessable_entity, location: @item
      end


  end

  def destroy
    # @item.destroy
    # respond_to do |format|
    @item = Item.find_by(id: params[:id])
    @item.destroy
    redirect_to items_path

    
    # respond_to do |format|
    #   format.html { redirect_to items_url }
    #   format.json { render json: Item.all }
    # end
  end

  private

  def item_params
    params.require(:item).permit(:collection_id, :color, :clothing_type, :picture)
  end

end


