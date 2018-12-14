class ChargesController < ApplicationController
	require 'rubygems'
	require 'twilio-ruby'
	@@email  = 0
	@@amount = 0
	@@phone  = ''
	@@order_id = ''

	def index
	end

	def new
		@@amount    = params[:amount]
		@@email     = params[:email]
		@@phone     = params[:mobile_number]
		@@order_id  = params[:order_id]
	end

	def create
		charge= Charge.create(email: @@email, amount: @@amount, razorpay_payment_id: params[:razorpay_payment_id])
		charge.save
	    if charge.present?
	        message = "Thanks for placing your order on Denny Dots, We have recived your order , and will contact you shortly! your order Tracking order number is #{@@order_id}"     # MESSAGE
	  		if @@phone.include? "+91"
				phone_number  = @@phone  			
			else
				phone_number  = '+91'+@@phone  #CONTACT NUMBER
			end
			if phone_number.size > 10
	        	# twilio_sms_send(phone_number,message)
			end	
	    end  
	    puts message  
	    redirect_to  charges_path
	    
	end

	def twilio_sms_send(phone_number, message)
	    require 'twilio-ruby'
	    account_sid = 'AC6f5dabea5c2ac20d36e739f9dcf2e071'
	    auth_token = '232e229751bc1b7ad4b3d9ae708fa012'
	    @client = Twilio::REST::Client.new account_sid, auth_token
	    @client.account.messages.create({from: '+15172012212 ', to: phone_number, body: message})
	    # puts @client
	    # puts phone_number
	    # puts message
	end
end
