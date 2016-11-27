class ClientsController < ApplicationController

  def create
    @client = Client.new(client_params)

    respond_to do |format|
      if client.save
        format.json { render status: :created }
      else
        format.json { render status: :unprocessable_entity }
      end
    end

  end

  def show
    @client = Client.find(params[:id])

    respond_to do |format|
      if !@client.blank?
        format.json { render status: :ok, location: :@client }
      else
        format.json { render status: :not_found }
      end
    end

  end

  def client_params
    params.require(:client)
        .permit(:email, :username, :encrypted_password)
  end

end
