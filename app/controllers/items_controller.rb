class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all
  end

  def show; end

  def edit; end

  def update
    @item.update(item_params)
    redirect_to item_path(@item)
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save
    @item.user = current_user
    if @item.save
      redirect_to item_path(@item)
   else
      render :new
   end
  end

  def destroy
    @item.destroy
    redirect_to items_path
  end

  private

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :description, :location, :credit, :image)
  end
end
