class ItemsController < ApplicationController

  def create
    @item = Item.create(item_params)
  end

  def show
    render :json => Item.find(params[:id])
  end

  def item_params
    params.require(:item)
        .permit(:name, :original_price, :current_price, :quantity, :store_id)
  end
end
