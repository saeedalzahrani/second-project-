class CommentsController < ApplicationController
    def create
         @post=Post.find(params[:post_id])
        @comment=@post.comments.new(comment_params)
        #@comment.user_id=session[:user].to_i
        @comment.save
        redirect_to post_path(@post)

	end

	private
	def comment_params
      params.require(:comment).permit(:body)
	end
end
