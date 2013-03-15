class AdminController < ApplicationController
	#before_filter :check
	
	def current_admin
		@current_admin ||= session[:admin]
	end
	
	helper_method :current_admin
	
	def check
		redirect_to root_path unless current_admin
		return
	end
end
