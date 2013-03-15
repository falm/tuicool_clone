class ApplicationController < ActionController::Base
  protect_from_forgery
  
  expose(:articles) { Article.order(:hits).limit(5) }
  expose(:topics) { Topic.first_topics(5) }
  
  def index
  end
  
  def about
  end
  
  def mobile
  end
  
  def join
  end
  
  def advice
  end
  
  def current_user
  	@current_user ||= session[:user]
  end
  
  helper_method :current_user
  
end
