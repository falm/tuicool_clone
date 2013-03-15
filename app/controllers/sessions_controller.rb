class SessionsController < ApplicationController
	
	def new 
  	end
  	
  	
  	def create
	    @user = User.authenticate(params[:username],params[:password])
	    if @user
	      session[:user] = @user
	      
	      flash[:notice] = "Welcome  #{@user.username}"
	      redirect_to root_path
	    else
	      flash[:notice] = "The username or password are incorrect"
	      redirect_to root_path
	    end
  	end
end
