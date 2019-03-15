class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
    @subreddit = Subreddit.find(params[:subreddit_id])
  end

  def create
    @post = Post.new(post_params)
    @post.subreddit_id = params[:subreddit_id]
    if @post.save
      redirect_to Subreddit.find(params[:subreddit_id])
    else
      # Do something else
    end
  end

  private

    def post_params
      params.require(:post).permit(:content, :title)
    end
end
