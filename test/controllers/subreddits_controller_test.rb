require 'test_helper'

class SubredditsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get subreddits_new_url
    assert_response :success
  end

end
