class SubredditsController < ApplicationController
  def new
    @subreddit = Subreddit.new
  end

  def show
    @subreddit = Subreddit.find(params[:id])
    @posts = Subreddit.find(params[:id]).posts
  end

  def index
    @subreddits = Subreddit.all
  end

  def create
    @subreddit = Subreddit.new(subreddit_params)
    if @subreddit.save
      redirect_to @subreddit
    else
      #do something
    end
  end

  private

    def subreddit_params
      params.require(:subreddit).permit(:name)
    end
end
