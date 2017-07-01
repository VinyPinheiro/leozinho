class ProductsController < ApplicationController
  before_action :autenticated?

  def index
    @products = Product.all
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to home_path, flash: { success: 'Dados atualizados com sucesso' }
    else
      ocurred_errors(@product)
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      redirect_to products_index_path, flash: { success: 'Dados apagados com sucesso' }
    else
      ocurred_errors(current_user)
      render :index
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_index_path, :notice => "Cadastrado com sucesso!"
    else
      ocurred_errors(@product)
      render :new
    end
  end

  private
  
  def product_params
    params[:product].permit(:name, :amount)
  end
end
