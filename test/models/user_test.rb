require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new
  end

  test "user with valid data should be created" do
    @user = User.create(name: "Danny", email: "dan@wall.com", password: "foobar", password_confirmation: "foobar")
    assert @user.valid?
    assert @user.save
  end

  test "user with bad password should not be created" do
    @user = User.create(name: "Danny", email: "dan@wall.com", password: "", password_confirmation: "")
    assert_not @user.save
    @user.password = "foobar"
    assert_not @user.save
  end

  test "user with bad email should not be created" do
    @user = User.create(name: "Danny", email: "", password: "foobar", password_confirmation: "foobar")
    assert_not @user.save
    @user.email = "a" * 10
    assert_not @user.save
    @user.email = "dan@wa"
    assert_not @user.save
  end
end
