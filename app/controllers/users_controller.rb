class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end
  
  # testing this out to see if i can get rid of forbidden attributes error
  private 
  def user_params
    params.require(:user).permit(:first, :last, :email, :password, :password_confirmation)
  end
 
end
