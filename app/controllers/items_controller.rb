class ItemsController < ApplicationController

  def show
    render :json => Item.find(params[:id]).to_json
  end
end
