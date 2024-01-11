class ForumController < ApplicationController  
    def index 
        @pagy, @comments = pagy(Comment.all.order('created_at DESC'), items: 8)
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

    def destroy_comment 
        @comment = Comment.find(params[:id])
        @comment.destroy 
        flash[:notice] = "Comment deleted"

        redirect_to request.referrer || root_path

    rescue ActiveRecord::RecordNotFound 
        flash[:alert] = "Comment not found"

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

    def destroy_reply 
        @reply = Reply.find(params[:id])
        @reply.destroy 
        flash[:notice] = "Reply deleted"

        redirect_to request.referrer || root_path

    rescue ActiveRecord::RecordNotFound 
        flash[:alert] = "Reply not found"

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