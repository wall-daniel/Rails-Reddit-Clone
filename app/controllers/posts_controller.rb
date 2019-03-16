class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
    @subreddit = Subreddit.find(params[:subreddit_id])
    @comment = Comment.new
  end

  def create
    @post = Post.new(post_params)
    @post.subreddit_id = params[:subreddit_id]
    @post.updoots = 0

    # If user isn't logged in, don't allow to post
    if !current_user.nil?
      @post.user_id = current_user.id

      if @post.save
        redirect_to Subreddit.find(params[:subreddit_id])
      else
        # Do something else
      end
    else
      # Flash something
    end
  end



  private

    def post_params
      params.require(:post).permit(:content, :title)
    end


end
