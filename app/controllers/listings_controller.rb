class ListingsController < ApplicationController

	def index
		@client = Enquiry.find(params[:client_id])
		@enquiry = Enquiry.find(params[:enquiry_id])
		@listing = Listing.order(:name).page(params[:page]).per(2)
	end

	def new
		@client = Client.find(params[:client_id])
		@listing = Listing.new
	end

	def create
		@client = Enquiry.find(params[:client_id])
		@enquiry = Enquiry.find(params[:enquiry_id])
		if current_client.admin?
			@listing = current_client.listings.new(listing_params)	
			if @listing.save
				UserMailer.enquiry_email_delayed(@client, @enquiry, @listing).deliver_now
				redirect_to client_enquiry_listing_path(@client, @enquiry, @listing)
			else	
				render "new"
			end
		else
			redirect_to root_path		
		end
	end

	def show
		@client = Client.find(params[:client_id])
		@listing = Listing.find(params[:id])
	end

	def edit
		@client = Client.find(params[:client_id])
		@listing = Listing.find(params[:id])
	end

	def update
		@client = Client.find(params[:client_id])
		@listing = Listing.find(params[:id])
		if @listing.update(listing_params)
			redirect_to listings_path
		else
			render 'edit'
		end
	end

	private

	def listing_params
		params.require(:listing).permit(:name, :short_desc, :long_desc, :start_date, :end_date, :venue, :trainer_id, :client_id)
	end

end