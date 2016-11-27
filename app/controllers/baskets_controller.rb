class BasketsController < ApplicationController

  def create
    @basket = Basket.new(basket_params)

    respond_to do |format|

      if @basket.save

        render status: :created

      else

        render status: :unprocessable_entity

      end
    end
  end

  def show
    @basket = Basket.find(params[:id])

      if !@basket.blank? && @basket.valid

        basket_items = @basket.items
        render status: :ok, :json => basket_items

      else

        render status: :not_found

    end
  end

  def basket_params
    params.require(:code)
  end
end
