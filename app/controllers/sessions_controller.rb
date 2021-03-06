class SessionsController < ApplicationController
  skip_before_filter :require_login, :only => [:new, :create]
  def new
  end
  
  def create
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      redirect_to root_url, :notice => "You have successfully Logged in!"
    else
      redirect_to root_url, :notice => "Invalid email or password has been Encountered! Recheck"
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "User Profile Logged out!"
  end
end
