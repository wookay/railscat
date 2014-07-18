class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :menu
      t.references :customer
      t.timestamps
    end
  end
end
