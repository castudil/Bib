class HomeController < ApplicationController
    layout "main_home"
    

    def index
        @users = User.where( activo: true) # last 3 records in ascending order
        
    end

    def contact

    	if verify_recaptcha( :message => "Oh! It's error with reCAPTCHA!") 
   			InvitationMailer.contact_email(params[:message][:message], params[:email][:email]).deliver
  		else
    		
  		end
    
        

        redirect_to root_path
        
    end 


end