class VmModuleController < ApplicationController
  def index 
    current_user 
    unless @current_user
      redirect_to new_session_path
    end
  end

  def create 
    @vm_module = VmModule.new(vm_module_params)
    if vm_module.save
      vm_module[:session_id] = vm_module.id 
      redirect_to @vm_module
    else
      flash[:register_errors] = vm_module.errors.full_messages
      render :action => 'new'
      redirect_to new_session_path
    end 
  end

  def new
      @vm_module = Vm_module.new 
  end

private

  def vm_module_params
    params.require(:vm_module).permit(:email,:password)
  end
end
