class InvitationMailer < MandrillMailer::MessageMailer
  default from: 'support@example.com'

  def contact_email(message,email)


    # no need to set up template and template_content attributes, set up the html and text directly
    mandrill_mail subject: "hello",
                  to: "cesar.astudillo@gmail.com",
                  text: "email : "+email +" message : "+message
                  
                  # to: invitation.email,
                  # to: { email: invitation.email, name: 'Honored Guest' },
                  
      
  end
end
