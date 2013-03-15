class Admin::TopicsController < AdminController
	expose(:topics)
	expose(:topic)
	
	def create
		if topic.save
			redirect_to admin_topics_path, notice: 'add topic successful'
		else
			redirect_to new_admin_topic_path, notice: topic.errors
		end
	end
	
	def update
		if topic.update_attribute(params[:aritcle])
			redirect_to admin_topics_path, notice: 'update successful'
		else
			redirect_to edit_admin_topic_path, notice: topic.errors
		end
	end
	
	def destroy
		topic.destroy
		redirect_to admin_topics_path, notice: 'delete successful'		
	end	
end
