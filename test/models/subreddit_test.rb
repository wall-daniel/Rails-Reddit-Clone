require 'test_helper'

class SubredditTest < ActiveSupport::TestCase

  def setup
    @subreddit = Subreddit.new
  end

  test "valid subreddit names" do
    assert_not @subreddit.valid?
    @subreddit.name = "a"
    assert_not @subreddit.valid?
    @subreddit.name = "a" * 256
    assert_not @subreddit.valid?
    @subreddit.name = "testing"
    assert @subreddit.valid?
  end
end
