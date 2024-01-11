class ReplyMailer < ApplicationMailer

    def reply_email 
        @comment = params[:comment]
        @reply = params[:reply]

        mail(to: @comment.email, subject: "Reply to comment on date #{@comment.created_at}")
    end
end
