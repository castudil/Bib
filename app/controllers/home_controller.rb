class HomeController < ApplicationController
    layout "main_home"
    

    def index
        @users = User.last(3) # last 3 records in ascending order
        
    end

    def contact
    
        InvitationMailer.contact_email(params[:message][:message], params[:email][:email]).deliver

        redirect_to root_path
        
    end 


end