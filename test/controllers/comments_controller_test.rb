require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  
  # i know these need to be modified
  test "should create new comment" do
    get :new
    assert_response :success
  end
  
  test "should show comment" do
    get :show
    assert_response :success
  end
  
  test "should get new comment" do
    get :new
    assert_response :success
  end
  
  test "should destroy comment" do
    get :destroy
    assert_response :success
  end
  
end
