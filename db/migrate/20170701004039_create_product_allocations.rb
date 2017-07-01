class CreateProductAllocations < ActiveRecord::Migration[5.0]
  def change
    create_table :product_allocations do |t|
      t.references :allocation, foreign_key:true
      t.references :product, foreign_key:true
    end
  end
end
