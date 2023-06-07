class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :food
      t.string :accompaniment
      t.text :description
      
      t.timestamps
    end
  end
end
