class Allocation < ApplicationRecord
	belongs_to :client
  has_many :product_allocation

  validates :allocation_date, presence: { message: 'A data de locação deve ser preenchida' }
end
