class AddGstToOrders < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :gst, :string
  end
end
