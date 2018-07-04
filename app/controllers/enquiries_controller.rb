class EnquiriesController < ApplicationController

	before_action :authorize 
	def index

	end

	def new
		@client = Client.find(params[:client_id])
		@enquiry = Enquiry.new
	end

	def create
		@client = Client.find(params[:client_id])
		@enquiry = current_client.enquiries.new(enquiry_params)
		if @enquiry.save
			UserMailer.enquiry_email(@client).deliver_now
			redirect_to clients_path
		else 
			render "new"
		end
	end

	private

	def enquiry_params
		params.require(:enquiry).permit(:subject_one, :subject_two, :budget, :start_date, :end_date, :venue, :client_id)
	end

end

