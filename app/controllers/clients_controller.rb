class ClientsController < ApplicationController
  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    @client.user_id = current_user.id
    if @client.save
      redirect_to clients_path(@client)
    else
      render:new
    end
  end

  def show
  end

  def index
    @clients = Client.all
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def client_params
    params.require(:client).permit(:name, :postal_code, :address, :telephone_number, :email, :introduction)
  end

end
