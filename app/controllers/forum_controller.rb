class ForumController < ApplicationController  
    def index 
        @comments = Comment.all
        @comment = Comment.new
        @reply = Reply.new
    end

    def create_comment 
        comment = Comment.new(comment_params)

        if comment.save 
            flash[:notice] = "Comment saved"
        else
            flash[:alert] = "Comment not saved"
        end

        redirect_to request.referrer || root_path
    end

    def create_reply 
        reply = Reply.new(reply_params)

        if reply.save 
            flash[:notice] = "Reply saved"
        else
            flash[:alert] = "Reply not saved"
        end

        redirect_to request.referrer || root_path
    end

    private 
    def comment_params 
        params.require(:comment).permit(:email, :message)
    end

    def reply_params 
        params.require(:reply).permit(:message, :comment_id)
    end
end