class CommentsController < ApplicationController
  
  def create
    @goal = Goal.find(params[:goal_id])
    @comment = @goal.comments.create(params[:comment].permit(:body))
    redirect_to goal_path(@goal)
  end
  
  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    @goal = @comment.goal
    @comment.destroy
    redirect_to goal_path(@goal)
  end
  
  private
  def comment_params
    params.require(:comment).permit(:user_id, :goal_id, :body)
  end

end
