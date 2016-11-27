class StoresController < ApplicationController

  def create
    @store = Store.new(store_params)

    respond_to do |format|

      if @store.save

        format.json { render status: :created }

      else

        format.json { render status: :unprocessable_entity }

      end
    end
  end

  def show
    @store = Store.find(params[:id])

    respond_to do |format|

      if !@store.blank?

        store_items = @store.items
        format.json { render status: :ok, location: store_items }

      else

        format.json {render status: :not_found}

      end
    end
  end
end
