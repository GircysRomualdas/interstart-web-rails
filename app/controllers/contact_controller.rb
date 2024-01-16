class ContactController < ApplicationController 
    def index 
        set_meta_tags(
            title: "Contact",
            description: "Contact Page Description",
            keywords: 'Contact Page Keywords'
        )
    end

    def create 
        ContactMailer.with(email: params[:email], message: params[:message]).contact_email.deliver_later
        flash[:notice] = "Contact us send"

        redirect_to request.referrer || root_path
    end
end