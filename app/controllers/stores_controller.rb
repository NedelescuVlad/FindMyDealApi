class StoresController < ApplicationController

  def create
    @store = Store.new(store_params)

    if @store.save

      render status: :created

    else

      render status: :unprocessable_entity
    end
  end

  def show
    @store = Store.find(params[:id])

    if !@store.blank?

      store_items = @store.items
      render status: :ok, :json => store_items

    else

      render status: :not_found

    end
  end


  def store_params
    params.require(:name).permit(:mail, :encrypted_password)
  end

end
