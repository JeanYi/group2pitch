class ClientsController < ApplicationController

	def index	
		@client = current_client
		@enquiry = 1
	end

    def show
    end

	def new
		@client = Client.new
	end

	def create
		@client = Client.new(client_params)
		if @client.save 
			session[:client_id] = @client.id
			UserMailer.welcome_email(@client).deliver_now
			redirect_to root_path
		else
			render "new"
		end
	end

	def show
		@client = Client.find(params[:id])
	end

	def edit
		@client = Client.find(params[:id])
	end

	def update
		@client = current_client
		if @client.update(client_params)
			redirect_to root_path
		else
			render 'edit'
		end
	end

	private

	def client_params
		params.require(:client).permit(:first_name, :last_name, :name_of_company, :designation, :email, :password, :phone_number, :image)
	end
end
