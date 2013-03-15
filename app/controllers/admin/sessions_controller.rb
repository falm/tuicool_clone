class Admin::SessionsController < AdminController
	layout false
	def new 
  	end
  	
  	
  	def create
	    @admin = Administrator.authenticate(params[:username],params[:password])
	    if @user
	      session[:admin] = @admin
	      
	      flash[:notice] = "Welcome  #{@admin.username}"
	      redirect_to root_path
	    else
	      flash[:notice] = "The username or password are incorrect"
	      redirect_to new_admin_session_path
	    end
  	end	
  	
  	def destroy
  		session[:admin] = nil
  		redirect_to root_path
  	end
end
