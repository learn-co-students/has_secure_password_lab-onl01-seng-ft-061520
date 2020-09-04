class UsersController < ApplicationController
  def create
    if params[:password] == params[:password_confirmation]
      @user = User.create(user_params)
      session[:user_id] = @user.id
      redirect_to '/users/new'
    else
      redirect_to '/users/new'
    end
  end

  def home
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
