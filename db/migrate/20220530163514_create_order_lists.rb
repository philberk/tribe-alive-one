class CreateOrderLists < ActiveRecord::Migration[6.1]
  def change
    create_table :order_lists do |t|
      t.decimal :subtotal
      t.decimal :total

      t.timestamps
    end
  end
end
