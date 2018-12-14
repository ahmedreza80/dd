class Order < ApplicationRecord
	has_many :items, class_name: 'OrderItem'
	def tracking_enum
    # Do not select any value, or add any blank field. RailsAdmin will do it for you.
    ['Order Recived', 'Quality Check', 'Out for delivery', 'Shipment Completed' ]
    # alternatively
    # { green: 0, white: 1 }
    # [ %w(Green 0), %w(White 1)]
  end
end
