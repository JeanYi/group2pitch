class ListingsController < ApplicationController

	def index
		@client = Enquiry.find(params[:client_id])
		@enquiry = Enquiry.find(params[:enquiry_id])
		@listing = Listing.order(:id).page(params[:page]).per(2)
	end

	def new
		@client = Client.find(params[:client_id])
		@enquiry = Enquiry.find(params[:enquiry_id])
		@listing = Listing.new(price: @enquiry.budget, name: @enquiry.subject_one, name_two: @enquiry.subject_two, start_date: @enquiry.start_date, end_date:@enquiry.end_date)
	end

	def create
		@client = Enquiry.find(params[:client_id])
		@enquiry = Enquiry.find(params[:enquiry_id])
		if current_client.admin?
			@listing = current_client.listings.new(listing_params)	
			@listing.enquiry_id = params[:enquiry_id]
			if @listing.save
				UserMailer.enquiry_email_delayed(@client, @enquiry, @listing).deliver_now
				redirect_to root_path
				# redirect_to client_enquiry_listing_path(@client, @enquiry, @listing)
			else	
				render "new"
			end
		else
			redirect_to root_path		
		end
	end

	# def show
		
	# 	@enquiry = Enquiry.find(params[:enquiry_id])
	# 	# @enquiry = enquiry.current_client
	# 	@listings = Listing.where(client_id: current_client.id)
		
	# end

	def show
		@client = Client.find(params[:client_id])
		@listing = Listing.find(params[:id])
	end

	def history
		@client = current_client
		@enquiries = current_client.enquiries
		render "history"
	end

	def edit
		@client = Client.find(params[:client_id])
		@listing = Listing.find(params[:id])
	end

	def update
		@client = Client.find(params[:client_id])
		@listing = Listing.find(params[:id])
		if @listing.update(listing_params)
			redirect_to root_path
		else
			render 'edit'
		end
	end

	private

	def listing_params
		params.require(:listing).permit(:price, :name, :name_two, :short_desc, :long_desc, :start_date, :end_date, :venue, :trainer_id, :client_id, :enquiry_id)
	end

end