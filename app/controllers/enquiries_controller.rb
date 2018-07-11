class EnquiriesController < ApplicationController

	before_action :authorize 
	

	def index
		@client = Client.find(params[:client_id])
		if @client.admin? 
			@enquiry= Enquiry.order(:id).page(params[:page]).per(5)
		else
			redirect_to root_path
	end

	def show
		@client = Client.find(params[:client_id])
		@enquiry = Enquiry.find(params[:id])	
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
			redirect_to root_path
			render "new"
		end
	end


	private

	def enquiry_params
		params.require(:enquiry).permit(:subject_one, :subject_two, :budget, :start_date, :end_date, :venue, :client_id, :remarks)
	end
	
end

