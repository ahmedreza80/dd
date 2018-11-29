class ChargesController < ApplicationController
	@@email  = 0
	@@amount = 0

	def index
		
	end

	def new
		@@amount = params[:amount]
		@@email = params[:email]
	end

	def create
		charge= Charge.create(email: @@email, amount: @@amount, razorpay_payment_id: params[:razorpay_payment_id])
		charge.save
	    redirect_to  charges_path
	end
end