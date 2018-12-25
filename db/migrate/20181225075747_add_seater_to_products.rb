class AddSeaterToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :seater, :string
  end
end
