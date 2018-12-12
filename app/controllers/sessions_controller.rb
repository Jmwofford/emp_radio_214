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
    current_user
    redirect_to root_path if @current_user
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_session_path, alert: "Logged Out"
  end

  private
  def login_params
    params.require(:login).permit(:email, :password)
  end
end
