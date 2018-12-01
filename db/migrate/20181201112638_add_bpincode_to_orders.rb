class AddBpincodeToOrders < ActiveRecord::Migration[5.1]
  def change
  	add_column :orders, :bpincode, :string
  end
end
