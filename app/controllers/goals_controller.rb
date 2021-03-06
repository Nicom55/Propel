class GoalsController < ApplicationController

  def index 
    @goals = Goal.all
  end
  
  def show
    @goal = Goal.find(params[:id])
  end

  def new
    @goal = Goal.new
  end

  def edit
    @goal = Goal.find(params[:id])
  end

  def create
    @goal = Goal.new(goal_params)
    if @goal.save
      redirect_to goals_path
    else
      @errors = @goal.errors
      render :new
    end
  end

  def update
    @goal = Goal.find(params[:id])
    if @goal.update(goal_params)
      redirect_to goals_path
    else
      @errors = @goal.errors
      render :edit
    end
  end

  def destroy
    @goal = Goal.find(params[:id])
    @goal.destroy
    redirect_to home_page_path
  end
    
    private 
    def goal_params
      params.require(:goal).permit(:title, :body)
    end
    
end
