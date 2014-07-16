class CollectionsController < ApplicationController
  # before_action :set_collection, only: [:show, :edit, :update, :destroy]

  # GET /collections

  def index
    @collections = Collection.all
    @collection = Collection.find_by(params[:id])
    @user = User.find_by(params[:id])
    @item = Item.find_by(params[:id])
    @items = Item.all
  
    respond_to do |format|
      format.html { } # index.html.erb
      format.json { render json: @collections }
    end
  end


  # GET /collections/1
  def show
    # collections = Collection.all
    @collection = Collection.find_by(id: params[:id])
    # user = User.find_by(id: params[:id])
    item = Item.find_by(id: params[:id])
    @items = Item.all
  end

  # GET /collections/new
  def new
    @collection = Collection.new
  end


#   # POST /collections
  def create
    @collection = Collection.new(collection_params)
    @collection.user_id = current_user.id

    if @collection.save
      redirect_to '/collections', notice: 'Collection was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    @collection = Collection.find_by(id: params[:id])
    if @collection.update_attributes(collection_params)
      redirect_to collection_path(@collection)
    else 
      render action: 'show', status: :unprocessable_entity, location: @collection
    end
  end

#   # PATCH/PUT /collections/1
#   def update
#     if @collection.update(collection_params)
#       redirect_to @collection, notice: 'Collection was successfully updated.'
#     else
#       render action: 'edit'
#     end
#   end

  # DELETE /collections/1
  def destroy
    @collection = Collection.find_by(id: params[:id])
    @collection.destroy
    redirect_to collections_url, notice: 'Collection was successfully destroyed.'
  end

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_collection
#       @collection = Collection.find(params[:id])
#     end

#     # Only allow a trusted parameter "white list" through.
#     def collection_params
#       params.require(:collection).permit(:location)
#     end
end

private

def collection_params
  params.require(:collection).permit(:location)
end
