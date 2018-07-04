class SessionsController < ApplicationController

	def new

	end

	def create
		client = Client.find_by_email(params[:email])
			if client && client.authenticate(params[:password])
				session[:client_id] = client.id
  				redirect_to clients_path, notice: "welcome #{client.first_name}, you have succesfully have signed in"
  			else
  				render "new" , alert: "User Id And or Password Invalid"

  			end

  	end

  	def destroy
	    session[:client_id] = nil
	    redirect_to clients_path,
	    notice: "You succesfully logged out"
	end


end
