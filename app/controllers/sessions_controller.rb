class SessionsController < ApplicationController
  def new
  end

  def create
    if @user = User.find_by(name: params[:user][:name])
      return head(:forbidden) unless @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to '/users/home'
    else
      redirect_to '/users/new'
    end
  end

  def destroy
    session.delete :name
  end
end
