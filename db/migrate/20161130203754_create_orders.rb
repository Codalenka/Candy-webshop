class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :order_number
      t.decimal :total_price
      t.string :payment
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
