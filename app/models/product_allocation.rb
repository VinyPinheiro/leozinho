class ProductAllocation < ApplicationRecord
  belongs_to :product
  belongs_to :allocation

  validates :amount, numericality: { message: 'Quantidade deve ser numérico' }
  validates :amount, presence: { message: 'Preencha a quantidade solicitadada' }
  validate :valid_amount?

  private

  def valid_amount?
    if amount.is_a? Numeric
      errors.add(:amount, 'Quantidade inferior a disponível') if amount > product.amount
    end
  end
end
