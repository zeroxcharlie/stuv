class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(id: params[:session][:id], password: params[:session][:password])
    if user
      log_in user
      redirect_to root_path
    else
      flash.now[:danger] = 'Invalid email/password combination'
      redirect_to root_path
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end