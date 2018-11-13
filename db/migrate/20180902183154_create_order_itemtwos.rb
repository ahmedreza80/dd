class CreateOrderItemtwos < ActiveRecord::Migration[5.1]
  def change
    create_table :order_itemtwos do |t|
      t.belongs_to :order
      t.belongs_to :bookcabinet
      t.integer :quantitytwo, null: false
      t.decimal :pricetwo, precision: 15, scale: 2, null: false

      t.timestamps
    end

   
  end
end
