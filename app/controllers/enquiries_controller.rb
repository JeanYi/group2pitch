class EnquiriesController < ApplicationController

	def index

	end

	def new
		@enquiry = Enquiry.new
	end

	def create
		@enquiry = Enquiry.new(enquiry_params)
		if @enquiry.save
			redirect_to enquiries_path
		end
	end

	private

	def enquiry_params
		params.require(:enquiry).permit(:subject_one, :subject_two, :budget, :start_date, :end_date, :venue)
	end

end
