require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  
  def setup
    @user = User.new(first: "Bob", last: "Jones", email:"test@gmail.com")
  end
  
  test "should be valid" do
    assert @user.valid?
  end
  
end
