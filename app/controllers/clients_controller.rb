class ClientsController < ApplicationController
  before_action :autenticated?

  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
  end

  def edit
    @client = Client.find(params[:id])
  end

  def update
    @client = Client.find(params[:id])
    if @client.update(client_params)
      redirect_to home_path, flash: { success: 'Dados atualizados com sucesso' }
    else
      ocurred_errors(@client)
      render :edit
    end
  end

  def destroy
    @client = Client.find(params[:id])
    if @client.destroy
      redirect_to clients_index_path, flash: { success: 'Dados apagados com sucesso' }
    else
      ocurred_errors(current_user)
      render :index
    end
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      redirect_to clients_index_path, :notice => "Cadastrado com sucesso!"
    else
      ocurred_errors(@client)
      render :new
    end
  end

  private
  
  def client_params
    params[:client].permit(:name, :address, :phone, :cpf)
  end
end

