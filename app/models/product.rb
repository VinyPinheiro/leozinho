class Product < ApplicationRecord
  has_many :product_allocation
  has_many :allocation, :through => :product_allocation
end
