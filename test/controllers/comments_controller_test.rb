require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  
  test "it should create a new comment on a goal" do
    assert_routing({ path: 'comments', method: :post }, { controller: 'comments', action: 'create' })
  end
  
  # working on a test for new comment form
  # the form shows up on a show goal page, since 
  # comments are a nested resource
  # test "it should include a new comment form on the show goal page" do
  # end
  
  test "should show all comments on a goal" do
    assert_routing({ path: 'goal_comment', method: :get }, { controller: 'comments', action: 'show' })
  end
  
  test "should delete the comment" do
    assert_routing({ path: 'comments', method: :delete }, { controller: 'comments', action: 'destroy' })
  end

end
