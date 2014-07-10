class ItemsController < ApplicationController
  # respond_to :json

  def index

    @name = Item.find_by(params[:id])

    @items = Item.all
    @item = Item.find_by(params[:id])

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



  # def new
  #   @item = Item.new
  # end


  # POST /cars
  # POST /cars.json
  def create
    @item = Item.new(params[:id])

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render action: 'show', status: :created, location: @item }
      else
        format.html { render action: 'new' }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def replace
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def destroy
    # @item.destroy
    # respond_to do |format|
    #   format.html { redirect_to items_url }
    #   format.json { render json: Item.all }

    @item = Item.destroy
    item.destroy
    #end
  end


end


