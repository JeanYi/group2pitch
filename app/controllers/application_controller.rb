class ApplicationController < ActionController::Base


	private

	def current_client
		@current_client ||= Client.find(session[:client_id]) if session[:client_id]
	end

	helper_method :current_client


end
