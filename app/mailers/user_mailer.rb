class UserMailer < ApplicationMailer

	# default from: "notifcations@example.com"

	def welcome_email(client)
		@client = client
		mail to: client.email, subject: "HELLOOOOOOO AGAIN"
	end

	def enquiry_email(client)
		@client = client
		mail to: client.email, subject: "Enquiry Received"
		
	end


end
