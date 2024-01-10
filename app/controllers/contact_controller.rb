class ContactController < ApplicationController 
    def index 
    end

    def create 
        puts "|+|------------------------|+|"
        puts params[:email]
        puts params[:message]
        puts "|+|------------------------|+|"

        redirect_to request.referrer || root_path
    end
end