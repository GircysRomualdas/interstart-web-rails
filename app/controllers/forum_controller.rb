class ForumController < ApplicationController  
    def index 
        @comments = Comment.all
    end
end