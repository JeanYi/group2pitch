class SessionsController < ApplicationController
	
	# Sign_in page for client 
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
	    redirect_to sign_in_path,
	    notice: "You succesfully logged out"
	end

	# Sign in page for trainer 
	def new_trainer
	end 

	def create_trainer 
		trainer = Trainer.find_by_email(params[:email])
		if trainer && trainer.authenticate(params[:password])
			session[:trainer_id] = trainer.id
			redirect_to trainers_path, notice: "welcome #{trainer.first_name}, you have succesfully have signed in"
		else 
			render "new_trainer", alert: "User Id And or Password Invalid"
		end 
  	end 

  	# Destory session for trainer 
	def destroy_trainer 
	    session[:trainer_id] = nil
	    redirect_to trainers_path,
	    notice: "You succesfully logged out"
  	end 

end
