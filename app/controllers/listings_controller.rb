class ListingsController < ApplicationController

	def index
		@listing = Listing.all
	end

	def new
		@listing = Listing.new
	end

	def create
		@listing = Listing.new(listing_params)
		if @listing.save
			redirect_to listings_path
		else
			render "new"
		end
	end

	def show
		
	end



	private

	def listing_params
		params.require(:listing).permit(:name, :short_desc, :long_desc, :start_date, :end_date)
	end

end