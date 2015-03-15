require 'test_helper'

class GoalsControllerTest < ActionController::TestCase
  
  test "should get index page" do
    get :index
    assert_response :success
    assert_select "h1", "Current Goals:"
  end
  
  test "should get new goal form" do
    get :new
    assert_response :success
  end
  
  test "should get edit goals form" do
    get :edit
    assert_response :success
  end
  
end
