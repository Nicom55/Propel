require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  
  def setup
    @user = User.new(first: "Bob", last: "Jones", email: "bobbyj@gmail.com", password: "cl3verpassw0rd" )
  end
  
  test "user should be valid" do
    assert @user.valid?
  end
  
  def setup
    @bad_user = User.new(first: "Rob", email: "robbyj@gmail.com", password: "nolastname" )
  end
  
  test "user should not pass validations" do
    assert @bad_user.valid?
  end
  
end
