class CreateCharges < ActiveRecord::Migration[5.1]
  def change
    create_table :charges do |t|
      t.string :email
      t.string :razorpay_payment_id
      t.string :amount

      t.timestamps
    end
  end
end
