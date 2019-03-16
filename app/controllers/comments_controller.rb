class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    @comment.post_id = params([:id])

    if !current_user.nil?
      @comment.user_id = current_user.id
      @comment.updoots = 0

      if @comment.save
        redirect_to Post.find(params[:id])
      else
        # Say error
      end
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:comment, :user_id, :post_id)
end
