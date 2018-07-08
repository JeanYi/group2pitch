class SessionsController < ApplicationController	
	#Sign in page for client 
	def new
	end
 
 	#Logs in a client 
	def create
		client = Client.find_by_email(params[:email])
			if client && client.authenticate(params[:password])
				session[:client_id] = client.id
  				redirect_to clients_path, notice: "welcome #{client.first_name}, you have succesfully have signed in"
  			else
  				render "new" , alert: "User Id And or Password Invalid"
  			end
  	end

  	# Sign_out page for client 
  	def destroy
	    session[:client_id] = nil
	    redirect_to sign_in_path,
	    notice: "You succesfully logged out"
	end

	# # Returns true if the client is logged in, false otherwise.
 #    def logged_in?
 #       !current_client.nil?
 #    end

 #    # Confirms a signed_in client 
 #    def logged_in_client 
 #      unless logged_in?
 #         flash[:danger] = "Please log in."
 #         redirect_to sign_in_path 
 #      end
 #    end

	# Sign in page for trainer 
	def new_trainer
	end 

	#Logs in a trainer 
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


	# # Returns true if the trainer is logged in, false otherwise.
 #   	def trainer_logged_in? 
 #   	   !current_trainer.nil?
 #   	end

 #   	# Confirms a signed_in client 
 #   	def logged_in_trainer 
 #      unless trainer_logged_in?
 #         flash[:danger] = "Please log in."
 #         redirect_to sign_in_trainer_path 
 #      end
 #   	end

end
