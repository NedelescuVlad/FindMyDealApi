class BasketsController < ApplicationController

  def create
    @basket = Basket.new(basket_params)

    respond_to do |format|

      if @basket.save

        format.json { render status: :created }

      else

        format.json { render status: :unprocessable_entity }

      end
    end
  end

  def show
    @basket = Basket.find(params[:id])

    respond_to do |format|

      if !@basket.blank? && @basket.valid

        basket_items = @basket.items
        format.json { render status: :ok, location: basket_items }

      else

        format.json {render status: :not_found}

      end
    end
  end

  def basket_params
    params.require(:code)
  end
end
