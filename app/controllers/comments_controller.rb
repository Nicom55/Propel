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
  
  def delete
    @comment = Comment.find(params[:id])
    @comment.destroy
  end
  
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end
  
  private
  def comment_params
    params.require(:comment).permit(:user_id, :goal_id, :body)
  end

end
