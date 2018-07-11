class BraintreeController < ApplicationController
  	def new
  		@client_token = Braintree::ClientToken.generate
	end

	def checkout
		@client = Client.find(params[:client_id])
		@enquiry = Enquiry.find(params[:enquiry_id])
	  	@listing = Listing.find(params[:id])
		  nonce_from_the_client = params[:checkout_form][:payment_method_nonce]

		  result = Braintree::Transaction.sale(
		   :amount => "10.00", #this is currently hardcoded
		   :payment_method_nonce => nonce_from_the_client,
		   :options => {
		      :submit_for_settlement => true
		    }
		   )

		  if result.success?
		    redirect_to history_path :root, :flash => { :success => "Transaction successful!" }
		    @listing.Paid!
		  else
		    redirect_to :root, :flash => { :error => "Transaction failed. Please try again." }
		end
	end
end
