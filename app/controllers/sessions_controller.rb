class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by_email(params[:email])
  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.id
  		redirect_to books_path, notice: "Logged in"
  	else
  		flash.now.alert ="Email or Password Incorrect"
  		render "new"
  	end
  end

  def destroy
    session.delete(:user_id)
  	@current_user = nil
    redirect_to root_url
  end
end
