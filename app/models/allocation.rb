class Allocation < ApplicationRecord
	belongs_to :client
  has_many :product_allocation
  has_many :product, :through => :product_allocation
end
