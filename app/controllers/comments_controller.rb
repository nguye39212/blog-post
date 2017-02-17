class CommentsController < ApplicationController
	def create
		
		comment = @current_user.comments.create(comment_params)
		# redirect_to post_path(params[:comment][:post_id])
		if comment.persisted?
			redirect_to post_path(comment.post), notice: "we saved your comments"
		else
			redirect_to post_path(comment.post), notice: "we couldn't save your comment"
		end
end

	def destroy
		comment = Comment.find(params[:id])
		if comment.destroy!
			redirect_to post_path(comment.post.id), notice:"we deleted your comment"
		end
	end

		private
		
		def comment_params
			params.fetch(:comment,{}).permit(:post_id, :content)
		end
	end

