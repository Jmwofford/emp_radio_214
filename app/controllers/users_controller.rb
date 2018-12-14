class UsersController < ApplicationController
  
  def create 
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id 
      redirect_to root_path
    else
      flash[:register_errors] = user.errors.full_messages
      redirect_to new_session_path
    end 
  end

  def new
    @user = User.new
    current_user
  end

  # def show
  #   @user = User.find(params[:id])
  # end

  private

  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end
end
