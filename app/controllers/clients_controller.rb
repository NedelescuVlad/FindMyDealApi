class ClientsController < ApplicationController

  def create
    @client = Client.new(client_params)

    if @client.save

      render status: :created

    else

      render status: :unprocessable_entity

    end
  end

  def show
    @client = Client.find(params[:id])

    if !@client.blank?

      render status: :ok
    else

      render status: :not_found

    end
  end

  def client_params
    params.require(:client)
        .permit(:email, :username, :encrypted_password)
  end

end
