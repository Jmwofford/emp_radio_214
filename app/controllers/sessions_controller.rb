class SessionsController < ApplicationController

  def create 
    user = User.find_by(email:login_params[:email])
    if user && user.authenticate(login_params[:password])
      session[:user_id] = user.id
      redirect_to '/', alert: "Currently Logged in"
    else
      flash[:login_errors] = ["Invalid Credentials, do Better fam! "]
      render "new"
    end
  end 

  def new 
    if current_user == nil
    @user = User.new
    else redirect_to new_user_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_user_path, alert: "Logged Out"
  end

  private
  def login_params
    params.require(:login).permit(:email, :password)
  end
end
