require 'test_helper'

class CommentsControllerTest < ActionController::TestCase

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get find_commentable" do
    get :find_commentable
    assert_response :success
  end

  test "should get get_master" do
    get :get_master
    assert_response :success
  end

end
