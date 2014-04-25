class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    
  end

  def update
    @user.update_attributes(user_params)
    redirect_to @user
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :pasword_confirmation)
  end

end
