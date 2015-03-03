class CommentsController < ApplicationController
  
  def create
    @comment = Comment.create(comment_params)
    if @comment.save
      redirect_to goal_path(goal)
    else
      @errors = @comment.errors
      render :new
    end
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
  
  private
  def comment_params
    params.require(:comment).permit(:user_id, :goal_id, :body)
  end

end
