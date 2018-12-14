class VmModuleController < ApplicationController

  before_action :authenticate

  def index 
  end

  def create 

  end
  
  def update
    @perform = VmRequest.perform 
    redirect_to vm_modules_path
  end
  private 

  def authenticate
    current_user 
    unless @current_user
      redirect_to new_session_path
    end
  end
end
