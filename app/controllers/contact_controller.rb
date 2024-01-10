class ContactController < ApplicationController 
    def index 
    end

    def create 
        ContactMailer.with(email: params[:email], message: params[:message]).contact_email.deliver_later
        flash[:notice] = "Contact us send"

        redirect_to request.referrer || root_path
    end
end