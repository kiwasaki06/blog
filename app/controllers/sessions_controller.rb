class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      flash[:success] = "LOGIN!!"
      redirect_to user
    else
      flash[:danger] = 'Invalid email'
      render 'new'
    end
  end

  def destroy
    log_out 
    flash[:success] = "LOGOUT!!"
    redirect_to root_url
  end
end
