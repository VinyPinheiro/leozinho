class Product < ApplicationRecord
  has_many :product_allocation
  has_many :allocation, :through => :product_allocation

  validates :name, presence: { message: 'Preencha o nome do Produto' }
  validates :amount, presence: { message: 'Preencha a Quantidade Disponível' }
  validates :amount, numericality: { message: 'Quantidade deve ser numérico' }

end
