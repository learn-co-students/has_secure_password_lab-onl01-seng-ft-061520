class UsersController < ApplicationController 
    # def new 
    #     @user = User.new
    # end

    # def create 
    #     @user = User.new(user_params)
    #     if @user.save
    #         session[:user_id] = @user.id
    #         redirect_to '/'
            
    #     else 
    #         edirect_to :signup
    #     end
    # end

    # def show
    #  redirect_if_not_logged_in
    #     #  @user = User.find_by_id(params[:id])
    #     # redirect_to '/' if !@user
    # end

    # private 
    # def user_params
    #     params.require(:user).permit(:name, :password, :password_confirmation)
    # end

    def new
        @user = User.new
      end
    
      def create
        @user = User.new(user_params)
        if @user.valid?
          @user.save
          session[:user_id] = @user.id
          redirect_to '/'
        else
          redirect_to :signup
        end
      end
    
      private
      def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
      end
end

