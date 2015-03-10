require 'test_helper'

class GoalsControllerTest < ActionController::TestCase
  
  test "should get index page" do
    get :index
    assert_response :success
  end
  
  test "should get show page" do
    get :show
    assert response :success
  end
  
  test "should get new goal form" do
    get :new
    assert_response :success
  end
  
  test "should show edit page for goal" do
    get :edit
    assert_response :success
  end
  
  test "should create goal" do
    get :create
    assert_response :success
  end
  
  test "should update goal" do
    get :update
    assert_response :success
  end
  
  test "should destroy goal" do
    get :destroy
    assert_response :success
  end
  
  
end
