class CreateAllocations < ActiveRecord::Migration[5.0]
  def change
    create_table :allocations do |t|
      t.datetime :allocation_date
      t.datetime :return_date
      t.integer :amount
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
