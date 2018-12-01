class AddBcityToOrders < ActiveRecord::Migration[5.1]
  def change
  	add_column :orders, :bcity, :string
  end
end