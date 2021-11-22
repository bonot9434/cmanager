class ClientsController < ApplicationController
  def new
    @client = Client.new
  end

  def create
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
