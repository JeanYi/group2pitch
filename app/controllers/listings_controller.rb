class ListingsController < ApplicationController

	def index
		@listing = Listing.order(:name).page(params[:page]).per(2)
	end

	def new
		@listing = Listing.new
	end

	def create
		if current_client.admin?
			

			@listing = current_client.listings.new(listing_params)
			# @listing.trainers = 
			if @listing.save
				
				redirect_to root_path
			else
				
				render "new"
			end
		else
			
			redirect_to root_path		
		end
	end

	def show
		@listing = Listing.find(params[:id])
	end

	def edit
		@listing = Listing.find(params[:id])
	end

	def update
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