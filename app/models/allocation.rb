class Allocation < ApplicationRecord
	belongs_to :client
  has_many :product_allocation
end
