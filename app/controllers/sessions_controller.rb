class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by_id(1)
    if user && user.authenticate(params[:password])
       session[:user_id] = user.id
      redirect_to session_path notice: "welcome"
    else 
      flash.now.alert = "password is invalid"
      render "new"
    end
  end 
  
end
