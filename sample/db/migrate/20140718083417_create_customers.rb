class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :money
      t.string :membershipcard
      t.timestamps
    end
  end
end
