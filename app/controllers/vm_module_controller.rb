class VmModuleController < ApplicationController
  def index 
     current_user 
    if @current_user
      redirect_to new_session_path
    end
  end
  def show
  end
end
