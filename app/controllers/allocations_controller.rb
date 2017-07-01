class AllocationsController < ApplicationController
  def new
    @products = Product.all
    @clients = Client.all
  end

  def create
    @products = Product.all
    @clients = Client.all
    allocation = Allocation.new(allocation_date: params[:allocation_date],
                                return_date:  nil,
                                client_id: params[:client])
    (0..(params[:product].size - 1)).each do |index|
      allocation.product_allocation.build(amount: params[:product][:amount][index.to_s], product_id: params[:product][:id][index.to_s])
      
    end
    if allocation.save
      allocation.product_allocation.each do |product_allocation|
        product = product_allocation.product
        product.update_attribute('amount', product.amount - product_allocation.amount)
      end
      redirect_to root_path, flash: { success: 'Locação feita com sucesso!' }
    else
      ocurred_errors(allocation)
      render :new
    end
  end

  def devolution
    allocation = Allocation.find(params[:id])
    allocation.update_attribute('return_date', DateTime.now.to_date)
    allocation.product_allocation.each do |product_allocation|
      product = product_allocation.product
      product.update(amount: product.amount + product_allocation.amount)
    end
      redirect_to clients_index_path, flash: { success: 'Devolução feita com sucesso!' }
  end
end
