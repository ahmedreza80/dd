class ChargesController < ApplicationController
	@@email = 0
	@@amount = 0

	def new
		@@amount = params[:amount]
		@@email = params[:email]
	end

	def create
		charge= Charge.create(email: @@email, amount: @@amount, razorpay_payment_id: params[:razorpay_payment_id])
		charge.save
		# order = Razorpay::Order.create amount: @@amount.to_i, currency: 'INR', receipt: 'TEST'
	#   @@amount = @@amount.to_i
	#   customer = Stripe::Customer.create(
	#     :email => @@email,
	#     :source  => params[:stripeToken]
	#   )

	#   charge = Stripe::Charge.create(
	#     :customer    => customer.id,
	#     :amount      => @@amount.to_s,
	#     :description => 'Rails Stripe customer',
	#     :currency    => 'usd'
	#   )

	# rescue Stripe::CardError => e
	#   flash[:error] = e.message
	  redirect_to root_path
	end
end
