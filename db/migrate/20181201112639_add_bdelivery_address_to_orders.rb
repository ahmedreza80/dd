class AddBdeliveryAddressToOrders < ActiveRecord::Migration[5.1]
  def change
  	add_column :orders, :bdelivery_address, :string
  end
end