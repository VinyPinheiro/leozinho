class ProductAllocation < ApplicationRecord
  belongs_to :product
  belongs_to :allocation
end
