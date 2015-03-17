require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  
  test "should create a new login session" do
    get :new
    assert_response :success
  end
  
  test "should end a user's login session" do
    assert_routing({ path: 'sessions', method: :delete }, { controller: 'sessions', action: 'destroy' })
  end

end
