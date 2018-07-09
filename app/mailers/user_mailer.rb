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

	def enquiry_email_delayed(client, enquiry, listing)
		@client = client
		@enquiry = enquiry
		@listing = listing
		mail to: enquiry.client.email, subject: "This is your quotation"
	end
end
