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
#   def show
#   end

#   # GET /collections/new
#   def new
#     @collection = Collection.new
#   end

#   # GET /collections/1/edit
#   def edit
#   end

#   # POST /collections
#   def create
#     @collection = Collection.new(collection_params)

#     if @collection.save
#       redirect_to @collection, notice: 'Collection was successfully created.'
#     else
#       render action: 'new'
#     end
#   end

#   # PATCH/PUT /collections/1
#   def update
#     if @collection.update(collection_params)
#       redirect_to @collection, notice: 'Collection was successfully updated.'
#     else
#       render action: 'edit'
#     end
#   end

#   # DELETE /collections/1
#   def destroy
#     @collection.destroy
#     redirect_to collections_url, notice: 'Collection was successfully destroyed.'
#   end

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
