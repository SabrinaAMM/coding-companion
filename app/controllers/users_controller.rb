class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update!(user_params) && @user == current_user
      redirect_to user_path(@user)
    else
      redirect_to dashboard_index_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:photo)
  end
end
