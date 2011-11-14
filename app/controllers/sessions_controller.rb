class SessionsController < ApplicationController
  
  def new
  end

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:id] = user.id
      redirect_to posts_url, :notice => "Logged in"
    else
      redirect_to login_url, :notice => "Wrong User ID or Password"
    end      
  end

  def destroy
    reset_session
    redirect_to posts_url, :notice => "Logged out"
  end

end
