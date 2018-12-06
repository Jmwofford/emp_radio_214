class SessionsController < ApplicationController

  def create 
    user = User.find_by(email:login_params[:email])
    if user && user.authenticate(login_params[:password])
      session[:user_id] = user.id
      redirect_to '/vm_modules'
    else
      flash[:login_errors] = ["Invalid Credentials, do Better fam! "]
      redirect_to '/'
    end
  end 

def new 
   @user = User.new
end

  private
  def login_params
    params.require(:login).permit(:email, :password)
  end
end
