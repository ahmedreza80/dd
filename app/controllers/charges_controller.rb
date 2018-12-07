class ChargesController < ApplicationController
	require 'rubygems'
	require 'twilio-ruby'
	@@email  = 0
	@@amount = 0
	@@phone  = ''

	def index
	end

	def new
		@@amount = params[:amount]
		@@email  = params[:email]
		@@phone  = params[:mobile_number]

	end

	def create
		charge= Charge.create(email: @@email, amount: @@amount, razorpay_payment_id: params[:razorpay_payment_id])
		charge.save
	    if charge.present?
	        message = "Thanks for placing your order on Denny Dots, We have recived your order , and will contact you shortly! Your Order number 3698527410"     # MESSAGE
	  		if @@phone.include? "+91"
				phone_number  = @@phone  			
			else
				phone_number  = '+91'+@@phone  #   CONTACT NUMBER
			end
			if phone_number.size < 10
				phone_number = '+918889828238'
			else
				phone_number =  phone_number
			end	
	        twilio_sms_send(phone_number,message)
	    end    
	    redirect_to  charges_path
	end

	def twilio_sms_send(phone_number, message)
	    require 'twilio-ruby'
	    account_sid = 'AC97a40a68eee1397d507f911fc4abc421'
	    auth_token = 'dcf3c97fa8f7feb66a267e2d61d87c1d'
	    @client = Twilio::REST::Client.new account_sid, auth_token
	    @client.account.messages.create({from: '+14242957455', to: phone_number, body: message})
	end
end