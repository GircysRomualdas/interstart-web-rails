class ContactMailer < ApplicationMailer

    def contact_email 
        @email = params[:email]
        @message = params[:message]

        mail(to: "r2udis@gmail.com", subject: "Contact us #{@email}")
    end
end
