class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
