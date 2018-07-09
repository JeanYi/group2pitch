class ApplicationController < ActionController::Base
   def logged_in?
       !current_client.nil?
   end

   # Confirms a signed_in client 
   def logged_in_client 
      unless logged_in?
         flash[:danger] = "Please log in."
         redirect_to sign_in_path
      end
   end

   def trainer_logged_in?
   	   !current_trainer.nil?
   end

   # Confirms a signed_in client 
   def logged_in_trainer 
      unless trainer_logged_in?
         flash[:danger] = "Please log in."
         redirect_to sign_in_trainer_path 
      end
   end	

private
	def current_client
		@current_client ||= Client.find(session[:client_id]) if session[:client_id]
	end

	def authorize
		redirect_to sign_in_path, alert: "Please sign in" if current_client.nil?
	end
	
	def current_trainer 
		@current_trainer ||= Trainer.find(session[:trainer_id]) if session[:trainer_id]
	end 

	helper_method :current_client
	helper_method :current_trainer 

end
