module SessionsHelper
 # # Returns true if the user is logged in, false otherwise.
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

 # Returns true if the trainer is logged in, false otherwise.
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

end

