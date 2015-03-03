class CommentsController < ApplicationController
  
  def create
    @comment = Comment.create(comment_params)
    redirect_to :back
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
    redirect_to :back
  end
  
  private
  def comment_params
    params.require(:comment).permit(:user_id, :goal_id, :body)
  end

end
