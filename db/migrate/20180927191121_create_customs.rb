class CreateCustoms < ActiveRecord::Migration[5.1]
  def change
    create_table :customs do |t|
      t.string :wood
      t.string :polish
      t.string :cimage
      t.string :dimension
      t.text :info
      t.string :name
      t.string :email
      t.string :phone
      t.string :city

      t.timestamps
    end
  end
end
