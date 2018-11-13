class CreateInteriors < ActiveRecord::Migration[5.1]
  def change
    create_table :interiors do |t|
      t.string :name
      t.string :email
      t.string :mobile
      t.string :city

      t.timestamps
    end
  end
end
