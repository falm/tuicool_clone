class TopicsController < ApplicationController
	before_filter :default_topic
	expose(:topics)
	expose(:topic)
	expose(:articles) { topic.articles}
	
	def default_topic
		params[:id]=1 unless params[:id]
	end

end
