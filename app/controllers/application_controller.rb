class ApplicationController < ActionController::Base
	
private
	def current_client
		@current_client ||= Client.find(session[:client_id]) if session[:client_id]
	end

	def authorize
		redirect_to new_session_path, alert: "Please sign in" if current_client.nil?
	end
	
	def current_trainer 
		@current_trainer ||= Trainer.find(session[:trainer_id]) if session[:trainer_id]
	end 

	helper_method :current_client
	helper_method :current_trainer 	
end
