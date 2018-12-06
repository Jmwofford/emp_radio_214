class VmModuleController < ApplicationController
  def index 
     current_user 
    unless @current_user
      redirect_to new_session_path
    end
  end
end
