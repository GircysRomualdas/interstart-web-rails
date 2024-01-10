class ContactController < ApplicationController 
    def index 
    end

    def create 
        puts "|+|------------------------|+|"
        puts params[:email]
        puts params[:message]
        puts "|+|------------------------|+|"

        flash[:notice] = "Contact us send"
        flash[:alert] = "Contact us not send"

        redirect_to request.referrer || root_path
    end
end