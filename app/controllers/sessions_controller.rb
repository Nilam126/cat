class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by_uid(params[:uid])
  if user && user.authenticate(params[:password])
     session[:uid] = user.id
     redirect_to(action:'welcome')
     
   else
     flash.now[:alert] = "Email or password is invalid"
     render "new"
end
  end

  def destroy
  	session[:user_id] = nil
    #redirect_to(action:'welcome')
      redirect_to home_index_path
  end
end
