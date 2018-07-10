class StaticListingsController < ApplicationController

	def new
		if current_client.admin?
		@static_listing = StaticListing.new
		else
			redirect_to root_path
		end
	end

	def create
		if current_client.admin?
		@static_listing = StaticListing.new(static_listing_params)
		if @static_listing.save
			redirect_to root_path

		else
			render "new"
		end

		else
		redirect_to root_path
		end 

	end



	def index
		@static_listing = StaticListing.order(:venue).page(params[:page]).per(1)
	end

	def show	
		@static_listing = StaticListing.find(params[:id])
	end

	def search
		if params[:search].blank?
		@static_listings = StaticListing.all
		else
		@static_listings = StaticListing.search(params)	
		end
	end

	private

		def static_listing_params
			params.require(:static_listing).permit(:venue,:description,:budget,:pax,:duration,:audience,:requirement,:image,:title)	
		end

end
